import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:majhe_gaon/core/models/level_progress.dart';
import 'package:majhe_gaon/core/widgets/landscape_split_layout.dart';
import 'package:majhe_gaon/features/gameplay/celebration_screen.dart';
import 'package:majhe_gaon/features/gameplay/rotate_phone_screen.dart';
import 'package:majhe_gaon/features/gameplay/story_level_screen.dart';
import 'package:majhe_gaon/features/placement/diagnostic_test_screen.dart';
import 'package:majhe_gaon/features/saga_map/saga_map_screen.dart';
import 'package:majhe_gaon/main.dart';
import 'package:majhe_gaon/theme.dart';

void main() {
  testWidgets('App renders splash screen with title', (WidgetTester tester) async {
    await tester.pumpWidget(const MajheGaonApp());
    expect(find.text('माझे गाव'), findsOneWidget);
  });

  test('GameState model handles diagnostic placement, level completion, and streak freeze', () {
    final state = GameState.instance;
    final initialCoins = state.coins;
    state.completeDiagnosticPlacement();

    expect(state.currentLevelIndex, equals(4));
    expect(state.getStarsForLevel(1), equals(3));
    expect(state.getStarsForLevel(2), equals(3));
    expect(state.getStarsForLevel(3), equals(3));
    expect(state.coins, equals(initialCoins + 30));

    final frozenBefore = state.isStreakFrozen;
    state.toggleStreakFreeze();
    expect(state.isStreakFrozen, equals(!frozenBefore));

    // Test Level 4 completion with 3 stars & 50 coins
    state.completeLevel(4, 3, 50);
    expect(state.getStarsForLevel(4), equals(3));
    expect(state.isLevelUnlocked(5), isTrue);
    expect(state.currentLevelIndex, equals(5));
    expect(state.coins, equals(initialCoins + 30 + 50));
  });

  testWidgets('Diagnostic test screen renders questions and interactive options', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        theme: GameTheme.themeData,
        home: const DiagnosticTestScreen(),
      ),
    );

    expect(find.text('३ कोपरे असणारा आकार कोणता? 🤔'), findsOneWidget);
    expect(find.text('त्रिकोण'), findsOneWidget);
    expect(find.text('चौकोन'), findsOneWidget);
    expect(find.text('वर्तुळ'), findsOneWidget);
  });

  testWidgets('Saga map screen renders HUD and level nodes', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        theme: GameTheme.themeData,
        home: const SagaMapScreen(),
      ),
    );

    expect(find.text('माझे गाव सफर 🚜'), findsOneWidget);
    expect(find.text('खेळा! (PLAY) ▶'), findsOneWidget);
  });

  testWidgets('RotatePhoneScreen renders orientation gate and ready button', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        theme: GameTheme.themeData,
        home: const RotatePhoneScreen(),
      ),
    );

    expect(find.text('तयार आहे! 👍 (READY!)'), findsOneWidget);
    expect(find.textContaining('फोन आडवा करा'), findsOneWidget);
  });

  testWidgets('LandscapeSplitLayout renders split-screen left stage and right board', (WidgetTester tester) async {
    tester.view.physicalSize = const Size(1280, 720);
    tester.view.devicePixelRatio = 1.0;
    addTearDown(tester.view.resetPhysicalSize);

    await tester.pumpWidget(
      MaterialApp(
        theme: GameTheme.themeData,
        home: const Scaffold(
          body: LandscapeSplitLayout(
            levelTitle: 'लेव्हल टेस्ट',
            rightContent: Center(
              child: Text('Right Board Dynamic Slot'),
            ),
          ),
        ),
      ),
    );

    expect(find.text('Right Board Dynamic Slot'), findsOneWidget);
    expect(find.text('लेव्हल टेस्ट'), findsOneWidget);
  });

  testWidgets('StoryLevelScreen renders story mode and advances with timer', (WidgetTester tester) async {
    tester.view.physicalSize = const Size(1280, 720);
    tester.view.devicePixelRatio = 1.0;
    addTearDown(tester.view.resetPhysicalSize);

    await tester.pumpWidget(
      MaterialApp(
        theme: GameTheme.themeData,
        home: const StoryLevelScreen(),
      ),
    );

    // Initial state: story playing
    expect(find.text('📖 कथा सुरू आहे... (Story Playing)'), findsOneWidget);

    // Advance 2 seconds to trigger Story Pause
    await tester.pump(const Duration(seconds: 2));
    await tester.pump(const Duration(milliseconds: 500));

    expect(find.text('थांबा! मोठे वाहन कोणते? 🚜 vs 🚲'), findsOneWidget);
    expect(find.text('📦 DYNAMIC DB QUESTION SLOT'), findsOneWidget);
    expect(find.text('मोठा ट्रॅक्टर'), findsOneWidget);
    expect(find.text('छोटी सायकल'), findsOneWidget);
    expect(find.byIcon(Icons.check_rounded), findsOneWidget);
    expect(find.byIcon(Icons.close_rounded), findsOneWidget);
  });

  testWidgets('CelebrationScreen renders congratulations and reward stars', (WidgetTester tester) async {
    tester.view.physicalSize = const Size(1280, 720);
    tester.view.devicePixelRatio = 1.0;
    addTearDown(tester.view.resetPhysicalSize);

    await tester.pumpWidget(
      MaterialApp(
        theme: GameTheme.themeData,
        home: const CelebrationScreen(
          completedLevelNumber: 4,
          earnedStars: 3,
          coinsAwarded: 50,
          autoLaunchConfetti: false,
        ),
      ),
    );

    await tester.pump(const Duration(milliseconds: 300));

    expect(find.text('अभिनंदन! 🎉'), findsOneWidget);
    expect(find.text('+50 Points (नाणी)'), findsOneWidget);
    expect(find.text('पुढील लेव्हल 🚀 (NEXT LEVEL)'), findsOneWidget);
  });
}
