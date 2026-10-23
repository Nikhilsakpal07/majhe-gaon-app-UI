# Majhe Gaon (माझे गाव) — Asset & Design System Handover Guide

A comprehensive catalog of all design tokens, color palettes, visual assets, 3D illustrations, typography, audio cues, and reusable UI components used across the **"Majhe Gaon"** educational game UI for ages 5–7.

---

## 1. Visual & Graphic Assets (DataStore Images & Placeholders)

### A. 3D Village Background Illustration (9:16 Vertical Full-Bleed)
* **Placeholder ID:** `{{DATA:IMAGE:IMAGE_6}}`
* **Format & Dimensions:** 768 × 1376 px (9:16 vertical ratio), PNG / WebP.
* **Usage:** Full-screen background for **Screen 4 (Village Saga Map)**.
* **Art Style & Generation Prompt:**
  > *"Full-bleed vertical 9:16 mobile game background illustration for a kids game saga map, Pixar 3D animated style. A lush, vibrant Indian countryside village seen from an isometric winding bird-eye perspective. Beautiful rolling green grassy hills, terracotta-roofed village cottages, a gentle sparkling blue river with wooden bridge, blooming sunflower patches, mango groves, cows grazing on meadows, and a distant festive village fair with colorful tents and a brightly lit Ferris wheel on the horizon under a sunny blue sky with soft fluffy cartoon clouds. Rich textures, warm saturated playful colors, clean depth, perfect for a level progression saga road overlay, no UI buttons, no text, no characters."*

### B. 3D Cinema Mode / Tablet Rotation Asset
* **Screen Usage:** Screen 5 (Rotate Phone / फोन आडवा करा!).
* **Visual Elements:**
  * Glowing 3D landscape tablet showing Chintu waving in a lush farm setting.
  * Adorable blue companion robot **NOVA** holding the tablet.
  * Rainbow circular rotation arrows with `Rotate! (९०°)` badges.
  * Floating yellow stars (`⭐`, `✨`) on a deep twilight night-sky background.

---

## 2. Brand Identity & Design Tokens

### A. Design System Reference
* **Design System ID:** `{{DATA:DESIGN_SYSTEM:DESIGN_SYSTEM_1}}` (Majhe Gaon Playful Learning)
* **Target Audience:** Children ages 5–7 (Vernacular Marathi + English dual subtitle cues).
* **Font Family:** `Rubik, Baloo 2, Nunito, sans-serif` (Warm, rounded, highly legible Devanagari typography).

### B. Color Palette Tokens

| Category | Token / Class | Hex Code | Visual Application |
|---|---|---|---|
| **Primary Grass / CTA** | `bg-emerald-500` / `border-emerald-700` | `#10B981` / `#047857` | Giant 3D "खेळा! (PLAY!)", "चला!", "पुढे! ➔" primary buttons |
| **Active Gold / Accent** | `bg-amber-400` / `border-amber-600` | `#FBBF24` / `#D97706` | Active level node (Level 4), Coin badges, road ribbons |
| **Completed Level** | `bg-emerald-600` | `#059669` | Unlocked & mastered levels (1, 2, 3) with 3 gold stars |
| **Locked Level** | `bg-purple-100` / `border-purple-200` | `#EDE9FE` / `#DDD6FE` | Padlocked candy nodes (Levels 5, 6, 7) |
| **Twilight Night Sky** | Gradient from `#1E1B4B` to `#4338CA` | Deep Indigo → Royal Blue | Screen 5 (Landscape transition / Cinema mode) |
| **HUD Cream Surface** | `bg-amber-50` / `border-amber-200` | `#FFFBEB` / `#FDE68A` | Floating coin/star counters, bottom play challenge cards |
| **Vibrant Orange** | `bg-orange-500` | `#F97316` | Speaker / Audio prompt buttons, secondary highlights |
| **Soft Lavender Cloud** | `bg-purple-50` | `#FAF5FF` | Speech bubbles (*येथे आहात!*), question helper cards |

---

## 3. UI Component Patterns & CSS Snippets

### A. Squishy 3D Tactile Push Button
```css
.btn-3d-green {
  background: linear-gradient(180deg, #34D399 0%, #059669 100%);
  border-bottom: 6px solid #047857;
  border-radius: 9999px;
  box-shadow: 0 8px 20px rgba(5, 150, 105, 0.4), inset 0 2px 2px rgba(255, 255, 255, 0.5);
  transition: transform 0.1s ease, border-bottom 0.1s ease;
}
.btn-3d-green:active {
  transform: translateY(4px);
  border-bottom: 2px solid #047857;
  box-shadow: 0 4px 10px rgba(5, 150, 105, 0.3);
}
```

### B. Glossy Candy Level Node (Saga Map)
```css
.node-active-hero {
  width: 88px;
  height: 88px;
  background: radial-gradient(circle at 35% 35%, #FDE047, #EAB308 60%, #CA8A04 100%);
  border: 5px solid #FFFFFF;
  box-shadow: 0 10px 25px rgba(202, 138, 4, 0.5), inset 0 4px 6px rgba(255, 255, 255, 0.8);
  border-radius: 50%;
  animation: pulse-ring 2s infinite;
}
```

### C. Floating HUD Pill (Coins & Stars)
```html
<div class="flex items-center gap-2 bg-white/95 backdrop-blur-md px-4 py-2 rounded-full border-2 border-amber-200 shadow-lg">
  <span class="text-2xl">🪙</span>
  <span class="font-extrabold text-amber-900 text-lg">१७०</span>
</div>
```

---

## 4. Characters & Mascot System

* **Chintu (चिंटू):** 6-year-old Indian boy hero dressed in a sunny yellow kurta, waving enthusiastically. Positioned atop the active Saga node and inside story mode.
* **NOVA the Bot:** Playful friendly blue robot companion with glowing eyes and soft digital smile; assists with technical prompts (e.g., rotating the device, headphone suggestions).
* **Companion Animals:** Desi calf (गोठ्यातील वासरू), chirping sparrow, friendly street dog.

---

## 5. Vernacular Copy Bank (Marathi + English Subtext)

| Key Interaction | Primary Devanagari Copy | Secondary Visual Subtitle |
|---|---|---|
| **Welcome CTA** | खेळा! (PLAY!) | Tap to start story |
| **Orientation Warning** | फोन आडवा करा! 📱✨ | (Turn your phone sideways!) |
| **Ready Confirmation** | चला! 👍 | (OK! I TURNED IT) |
| **Active Map Location** | येथे आहात! 👇 | Current stage indicator |
| **Stage 4 Challenge** | टप्पा ४: जत्रा व खेळ 🎪 | Level 4: Fair & Games |
| **Positive Praise** | छान! शाब्बास! 🌟 | Superb! Well done! |
| **Next Level** | पुढील खेळ! 🚀 | Next Level! |
| **Voice / Listen** | ऐका व बोला 🎙️ | Listen & Speak |

---

## 6. How to Build Future Screens Using This Kit

1. **Use `min-height: 100vh` & Full-Bleed Containers:** Ensure root containers eliminate bottom letterboxing and whitespace gaps.
2. **Apply Bold 3D Candy Skeuomorphism:** Keep buttons chunky (min 56px touch targets for small fingers), with multi-step box shadows and radial highlights.
3. **Dual Language Scaffolding:** Display large Devanagari text (`text-2xl` to `text-3xl`) with high-contrast pill badges or parenthesized English hints for bilingual parents/educators.
4. **Use Audio-First Cues:** Every major card should feature a round yellow/orange speaker icon (`🔊`) indicating interactive read-aloud support.
