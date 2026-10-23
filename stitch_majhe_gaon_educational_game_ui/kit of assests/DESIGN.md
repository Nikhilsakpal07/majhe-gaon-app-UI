---
name: Majhe Gaon Playful Learning
colors:
  surface: '#fdf7ff'
  surface-dim: '#e1d3ff'
  surface-bright: '#fdf7ff'
  surface-container-lowest: '#ffffff'
  surface-container-low: '#f8f1ff'
  surface-container: '#f3eaff'
  surface-container-high: '#eee4ff'
  surface-container-highest: '#e9ddff'
  on-surface: '#1f143c'
  on-surface-variant: '#484556'
  inverse-surface: '#352a52'
  inverse-on-surface: '#f6eeff'
  outline: '#797588'
  outline-variant: '#c9c3d9'
  surface-tint: '#5e35f1'
  primary: '#5323e6'
  on-primary: '#ffffff'
  primary-container: '#6c47ff'
  on-primary-container: '#f1ebff'
  inverse-primary: '#c9beff'
  secondary: '#795900'
  on-secondary: '#ffffff'
  secondary-container: '#ffc329'
  on-secondary-container: '#6f5100'
  tertiary: '#006128'
  on-tertiary: '#ffffff'
  tertiary-container: '#007d35'
  on-tertiary-container: '#b9ffbe'
  error: '#ba1a1a'
  on-error: '#ffffff'
  error-container: '#ffdad6'
  on-error-container: '#93000a'
  primary-fixed: '#e6deff'
  primary-fixed-dim: '#c9beff'
  on-primary-fixed: '#1b0063'
  on-primary-fixed-variant: '#4500d8'
  secondary-fixed: '#ffdf9f'
  secondary-fixed-dim: '#f9bd22'
  on-secondary-fixed: '#261a00'
  on-secondary-fixed-variant: '#5c4300'
  tertiary-fixed: '#7ffc97'
  tertiary-fixed-dim: '#62df7d'
  on-tertiary-fixed: '#002109'
  on-tertiary-fixed-variant: '#005320'
  background: '#fdf7ff'
  on-background: '#1f143c'
  surface-variant: '#e9ddff'
typography:
  display-hero:
    fontFamily: Rubik
    fontSize: 40px
    fontWeight: '800'
    lineHeight: 48px
  display-hero-mobile:
    fontFamily: Rubik
    fontSize: 32px
    fontWeight: '800'
    lineHeight: 40px
  headline-lg:
    fontFamily: Rubik
    fontSize: 28px
    fontWeight: '700'
    lineHeight: 36px
  headline-md:
    fontFamily: Rubik
    fontSize: 22px
    fontWeight: '700'
    lineHeight: 30px
  body-lg:
    fontFamily: Nunito Sans
    fontSize: 18px
    fontWeight: '700'
    lineHeight: 26px
  body-md:
    fontFamily: Nunito Sans
    fontSize: 16px
    fontWeight: '600'
    lineHeight: 24px
  label-chunky:
    fontFamily: Rubik
    fontSize: 18px
    fontWeight: '800'
    lineHeight: 22px
  label-badge:
    fontFamily: Rubik
    fontSize: 14px
    fontWeight: '700'
    lineHeight: 18px
  caption:
    fontFamily: Nunito Sans
    fontSize: 13px
    fontWeight: '700'
    lineHeight: 18px
rounded:
  sm: 0.5rem
  DEFAULT: 1rem
  md: 1.5rem
  lg: 2rem
  xl: 3rem
  full: 9999px
spacing:
  gutter: 1rem
  gutter-tablet: 1.5rem
  margin: 1rem
  margin-tablet: 2rem
  space-xs: 0.375rem
  space-sm: 0.75rem
  space-md: 1.25rem
  space-lg: 1.75rem
  space-xl: 2.5rem
---

## Brand & Style

This design system is crafted for an engaging, gamified mobile learning journey set in a vibrant Indian village. Tailored for children aged 5–10, the experience bridges local folklore with futuristic wonder through two narrative guides: NOVA, an expressive 3D electric-blue robot, and Chintu, a spirited village boy. 

The visual movement blends **Tactile / Skeuomorphic Toybox design** with **Pixar-inspired 3D storybook aesthetics** and **Duolingo-style gamification mechanics**:
- **Chunky & Physical:** Every interactive element has weight, spring, and tactile push-depth. Buttons behave like physical rubber-stamped arcade keys that physically press down when tapped.
- **Friendly & Safe:** Sharp corners are strictly prohibited. Shapes emulate sculpted clay, smooth river pebbles, and puffy animated clouds.
- **Warm Village Storybook:** Warm cream base surfaces evoke sunlit courtyards, while high-saturation jewel accents deliver immediate arcade gratification.
- **Celebratory Feedback:** Rewarding animations, glowing stars, floating speech bubbles, and expressive audio cues ensure low-stress, high-delight micro-interactions.

## Colors

The palette balances energetic game-engine primaries against a soothing, eye-friendly cream parchment background to eliminate eye strain during prolonged play sessions.

### Functional Roles & 3D Tactile Depths
- **Canvas Base (`#FFFDF5`):** Warm sunlit cream canvas, replacing clinical digital whites with an organic, storybook feel.
- **Surface Containers (`#FFFFFF` & `#F3E8FF`):** Pure white interactive cards layered above soft lavender sub-panels.
- **Primary / Action (`#6C47FF`):** Electric Purple for heroic mission triggers, next steps, and NOVA's interface glow. 
  - *Bottom Lip Shadow:* `#5432DE` (4px bottom ridge).
- **Secondary / Delight (`#FBBF24`):** Sunshine Gold for streak multipliers, Chintu's festive accents, and treasure stars.
  - *Bottom Lip Shadow:* `#D97706` (4px bottom ridge).
- **Success / Affirmation (`#16A34A`):** Emerald Green for correct quiz answers, unlocked levels, and completed quests.
  - *Bottom Lip Shadow:* `#15803D` (4px bottom ridge).
- **Ink / Structure (`#271C44`):** Deep Grape Black used for high-contrast typography, comic outlines, and foundational 3D drop shadows.

Avoid pure `#000000` anywhere in the interface; all deep tones carry warm purple undertones to preserve visual harmony.

## Typography

Typography balances bubbly charm with immediate legibility for emerging early-childhood readers across dual scripts (English and Marathi / Devanagari transliteration):
- **Headlines & Interactive Labels (Rubik):** Softened geometric curves with heavy stroke weights ensure words appear plump, approachable, and punchy.
- **Body & Story Text (Nunito Sans):** Rounded terminal strokes maintain high warmth while offering open counters and distinct character shapes to prevent reading fatigue.

### Bilingual Typesetting Rules
- Maintain high font weights (600–800) across all scales to prevent delicate strokes from disappearing against textured or colored backgrounds.
- Keep body line heights generous (minimum 1.4x) to comfortably accommodate Devanagari matras, vowel signs, and diacritics without vertical clipping.
- Never set headings in all-caps; title case preserves readable silhouette contours for young learners.

## Layout & Spacing

The layout is built for fluid touch ergonomics on mobile phones and mini-tablets held by small hands.

### Structural Framework
- **Primary Grid:** Fluid 4-column layout on mobile devices (`<600px`), shifting to a 6-column layout on small tablets and landscape orientations.
- **Thumb Reach Zone:** Mission-critical navigations, game triggers, and replay controls occupy the bottom 40% of the viewport. Top bars are reserved strictly for HUD indicators (coins, energy, current streak).
- **Touch Targets:** All primary interactables enforce an absolute minimum physical hit area of `56px x 56px` to compensate for developing motor skills and erratic screen taps.

## Elevation & Depth

Visual hierarchy does not rely on sterile drop shadows or misty blurs. Instead, depth uses **tactile extrusion geometry** inspired by physical game tokens and wooden play sets:

1. **Beveled Extrusions (Solid Drop-Lips):**
   - Interactive components use a hard bottom border (typically `4px` height) colored 20–30% darker than the surface face.
   - Rest State: The element shows its full 4px bottom ledge with a soft ambient tinted floor shadow (`0 8px 16px rgba(39, 28, 68, 0.12)`).
   - Pressed/Active State: The face translates down `4px` (`translateY(4px)`), completely flattening the lip and creating a snappy, real-world physical click.

2. **Specular Top Highlight:**
   - Cards and primary buttons feature an inset top border highlight (`inset 0 2px 0 rgba(255, 255, 255, 0.4)`) simulating glossy 3D toy resin.

3. **Floating HUD Elements:**
   - Overlays, mascot dialogue balloons, and star counters float on elevation level 2, backed by a crisp 2px border outline in `#271C44` at 15% opacity to maintain clarity against changing game maps.

## Shapes

The interface embraces an ultra-soft, organic form factor. 

- **Pill & Capsule Radii (`rounded-full` / `24px` to `32px`):** Used universally across buttons, action bars, answer tiles, and HUD chips to eliminate visual hazards.
- **Card Containers:** Bound by `24px` to `28px` corner radii, evoking smooth clay tablets.
- **Speech Bubbles & Pointers:** Rounded triangles with curved apexes join seamlessly to mascot dialog boxes without pointy tips.

## Components

### Chunky 3D Tactile Buttons
- **Structure:** Minimum height `56px`, pill-shaped radius (`32px`), padding `12px 24px`.
- **States:**
  - *Rest:* Top surface color (Electric Purple `#6C47FF`) with a solid `4px` bottom extrusion lip (`#5432DE`), plus an inner gloss rim (`inset 0 2px 0 rgba(255,255,255,0.4)`).
  - *Active / Pressed:* `transform: translateY(4px);` with bottom lip collapsed to `0px`.
  - *Disabled:* Flat muted lavender surface (`#E2D9F3`) with `4px` deeper neutral lip (`#C4B5E0`) and zero gloss.
- **Text:** Uppercase-styled Rubik Extra-Bold with crisp drop shadow (`0 1px 0 rgba(0,0,0,0.2)`).

### Super-Rounded Question & Story Cards
- **Structure:** White (`#FFFFFF`) or pale lavender (`#F3E8FF`) background, `24px` border radius, `20px` internal padding.
- **Borders & Rim:** `2px` solid `#EDE5FF` border with a 4px soft vertical offset tint at the card base.
- **Selected State:** Border turns into a solid 3px Electric Purple outline with Sunshine Gold celebratory sparkles in the upper corner.

### Mascot Speech Bubbles
- **Structure:** Crisp white bubble with `20px` rounded corners and a curved bottom tail pointing toward NOVA or Chintu.
- **Accents:** Paired with an integrated mini audio-speaker button so pre-readers can listen to questions narrated aloud.

### Audio Speaker Buttons
- **Design:** Circular `48px x 48px` tactile button in Sunshine Gold (`#FBBF24`) featuring a punchy white speaker icon.
- **Micro-Interaction:** Pulses with expanding concentric rings (`scale(1.08)`) during active audio playback.

### Gamified HUD Chips (Coins, Stars, Streaks)
- **Structure:** Pill capsules (`36px` height) featuring an overlapping 3D icon (Gold Coin, Ruby Gem, or Blue Spark) spilling over the left border.
- **Palette:** Translucent warm cream or soft purple fill, deep grape text (`#271C44`), and a `2px` inner border.

### Multi-Choice Tap Tiles
- **Design:** Full-width pill or rounded-box options with an alphabetical or illustrated badge on the left.
- **Interaction:** Tapping triggers a physical press down; correct validation flashes Emerald Green (`#16A34A`), while incorrect answers gently shake with a soft bounce before resetting.