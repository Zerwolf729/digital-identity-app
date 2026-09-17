# Design System: My Digital Identity App

This document establishes a clean, professional, and consistent visual language for the **My Digital Identity App** mobile application, formulated as a light-themed adaptation of the dark-themed user interface shown in the primary visual reference (`identity-app-img.png`).

---

## 1. Design Principles

- **Minimalism**: Focus on essential portfolio elements. Keep structural spacing generous and layout clutter-free.
- **Professional Personal Branding**: Highlight the developer’s name, program, and core competency in a streamlined personal resume presentation.
- **Clear Information Hierarchy**: Elevate important structural details (such as the developer's name) over secondary elements (NIM, badges).
- **Readability**: High contrast between background text and interactive elements. Highly legible sans-serif typography.
- **Visual Consistency**: Consistent application of design tokens for sizes, spaces, shapes, and shadows.
- **Mobile-First Design**: Optimized for single-screen responsive viewports of varying widths with fluid vertical scrolling.

---

## 2. Theme and Visual Direction

- **Light Theme Focus**: Re-interprets the visual design from the dark-themed reference (`identity-app-img.png`) into a light-themed interface featuring bright backgrounds (`#F8F9FA`), soft white containers (`#FFFFFF`), crisp subtle borders (`#E5E7EB`), and strong dark slate text for unmatched legibility.
- **Soft Visual Hierarchy**: Uses slight shadows, padding scales, and muted colors instead of harsh dividing borders.
- **Preserved Structure**: Maintains the exact vertical stacking, proportions, avatar circle, and section flows illustrated in the reference image while converting the interface to a professional, modern, and accessible light aesthetic.

---

## 3. Color System

| Token Name | Hex Value | Intended Usage | Example UI Elements |
| :--- | :--- | :--- | :--- |
| `colorPrimary` | `#3B82F6` | Accent color, icons, links, and highlighted borders | Interactive icons, links, active states |
| `colorPrimaryLight` | `#EFF6FF` | Background for interactive active/focused states | Selected item backing, subtle tag background |
| `colorBackground` | `#F8F9FA` | Main canvas background | Screen background |
| `colorSurface` | `#FFFFFF` | Core container and card elements | Cards, background of skill block/multimedia card |
| `colorSurfaceSecondary`| `#F3F4F6` | Backup surface color for grouping/secondary cards | Inner components, secondary badges |
| `colorTextPrimary` | `#1F2937` | Highly legible primary text | Developer's full name, section headers |
| `colorTextSecondary` | `#4B5563` | Subtitles and standard content descriptions | Detailed contact info, main description |
| `colorTextMuted` | `#9CA3AF` | Supporting labels and minor metadata | NIM, inactive labels, placeholders |
| `colorBorder` | `#E5E7EB` | Soft structural divider line and borders | Skill tag borders, card outlines, divider lines |
| `colorDivider` | `#F3F4F6` | Very soft structural section boundary lines | Section dividers |
| `colorAccent` | `#4F46E5` | Highlight elements requiring immediate focal call | Multimedia play button backdrop |
| `colorSuccess` | `#10B981` | Positive states or successful transactions | Approved badge highlight |
| `colorError` | `#EF4444` | Negative actions or failed visual states | Erroneous input helper text |
| `colorIcon` | `#4B5563` | Standard neutral icon rendering | Mail, phone, and social media platform icons |
| `colorSkillBg` | `#F3F4F6` | Background of individual skill tag | Skill container |
| `colorSkillText` | `#374151` | Text of individual skill tag | Skill name labels |
| `colorBadgeBg` | `#DBEAFE` | Background of study program badge | "Teknik Informatika" container |
| `colorBadgeText` | `#1E40AF` | Text color of study program badge | "Teknik Informatika" text |
| `colorMediaOverlay` | `#000000` | Overlay used to darken thumbnail for playback | Video overlay backing |

---

## 4. Typography System

The recommended typeface is **Inter** (fallback: sans-serif).

| Style Token | Font Size | Font Weight | Line Height | Letter Spacing | Intended Usage |
| :--- | :--- | :--- | :--- | :--- | :--- |
| `textDisplay` | 32px | Bold (700) | 1.2 | -0.5px | Grand titles / prominent hero headings |
| `textHeading` | 24px | Bold (700) | 1.25 | -0.2px | Developer name, section headers |
| `textBody` | 16px | Regular (400) | 1.5 | 0px | Main descriptive and contact texts |
| `textCaption` | 12px | Regular (400) | 1.4 | 0px | Placeholder info, minor details, NIM |
| `textLabel` | 14px | Medium (500) | 1.4 | 0.1px | Contact tags, key-value mappings |
| `textButton` | 14px | Bold (700) | 1.4 | 0.2px | Interactive button text elements |
| `textBadge` | 12px | Semi-Bold (600) | 1.4 | 0.2px | Study program text |
| `textSkillTag` | 13px | Medium (500) | 1.4 | 0px | Individual skill names |

---

## 5. Spacing System

All measurements are represented in Flutter logical pixels.

| Token Name | Value (px) | Application |
| :--- | :--- | :--- |
| `spacingXs` | 4px | Internal badge padding, minor vertical element adjustments |
| `spacingSm` | 8px | Vertical space between labels, inside tag padding |
| `spacingMd` | 16px | Padding inside skill tag / contact row, space between elements |
| `spacingLg` | 24px | Screen side margins, vertical space between main section cards |
| `spacingXl` | 32px | Space surrounding the avatar header, large sections spacing |
| `spacingXxl` | 48px | Outer margins of the top profile container block |

---

## 6. Layout and Grid System

- **Screen Padding**: Safe, consistent margin of `spacingLg` (24px) is enforced at the left and right bounds of the screen.
- **Maximum Content Width**: Hard constraint of 480px. For wider mobile screens and tablets, the main layout centers inside a column constrained by this width.
- **Vertical Section Spacing**: Distinct content sections are separated vertically by `spacingXl` (32px).
- **Profile Header Alignment**: Content inside the Profile Header is horizontally centered.
- **Content Alignment**: Align contact rows and multimedia descriptions to the left, matching the reference structure.
- **Responsiveness**: Use Flutter `Wrap` for skill tags to flow natively on small widths. Wrapping the entire screen within a `SingleChildScrollView` is mandatory to avoid scroll-overflows.
- **Layout Widgets**:
  - `Column` for main vertical layouts.
  - `Row` for horizontal lists, badge assets, and contact rows.
  - `Wrap` with `WrapAlignment.center` or `WrapCrossAlignment.center` for flexible chip collections.
  - `Stack` for the multimedia preview card to overlay the play button on the background image.

---

## 7. Border Radius and Shape System

Soft, rounded corners are applied across elements to project a modern and friendly aesthetic.

- **Small Radius (`radiusSm` = 6px)**: Applied to small tags (e.g., individual Skill Tags).
- **Medium Radius (`radiusMd` = 12px)**: Applied to compact cards, badges, and smaller elements (e.g., Study Program Badge).
- **Large Radius (`radiusLg` = 20px)**: Applied to main structural components and card elements (e.g., Multimedia Preview Card).
- **Circular (`radiusCircle` = 999px)**: Applied to circular elements such as the profile Avatar and the multimedia Play Button.

---

## 8. Elevation and Shadow System

To maintain a clean and lightweight visual aesthetic, elevation must remain subtle. Avoid heavy dark shadows.

- **No Elevation**: Used on tags (Skill Tags, Study Program Badge), contact items, and screen background.
- **Low Elevation (`shadowLow`)**:
  - `BoxShadow` with `color: rgba(0, 0, 0, 0.04)`, `blurRadius: 8px`, `offset: Offset(0, 2)`.
  - Intended for main profile cards and background boxes.
- **Medium Elevation (`shadowMedium`)**:
  - `BoxShadow` with `color: rgba(0, 0, 0, 0.08)`, `blurRadius: 16px`, `offset: Offset(0, 4)`.
  - Intended for overlay elements, play buttons, or interactive floating buttons.

---

## 9. Iconography System

- **Style**: Use clean, outlined icons (e.g., `Icons.mail_outline`, `Icons.phone_outlined`) from the standard `Icons` (Material Icons) library for a lightweight, modern feel.
- **Icon Sizing**:
  - `iconSizeSm`: 16px (used for labels or inline decorations).
  - `iconSizeMd`: 24px (standard for contact card items).
  - `iconSizeLg`: 32px (used for player control icons).
- **Coloring**: Icons should use `colorPrimary` or `colorTextSecondary` to match text labels.
- **Alignment**: Center-align icons horizontally and vertically inside their containers.

---

## 10. Component Specifications

### A. Profile Header
- **Purpose**: Introduces the developer with an avatar, full name, identification (NIM), and study program.
- **Visuals**:
  - Avatar circle (`img/profile-picture.png`) with size 110x110. It is enclosed inside a circular border (`colorBorder` with `width: 3.0`).
  - Full Name: `textHeading` (`colorTextPrimary`), center-aligned.
  - NIM: `textCaption` (`colorTextMuted`), center-aligned.
- **Spacing**:
  - Avatar bottom margin: `spacingMd` (16px).
  - Name bottom margin: `spacingXs` (4px).
  - NIM bottom margin: `spacingMd` (16px).

### B. Skill Tag
- **Purpose**: Displays a single skill chip.
- **Visuals**:
  - Container background: `colorSkillBg`.
  - Padding: Horizontal `spacingMd` (16px), Vertical `spacingSm` (8px).
  - Border radius: `radiusSm` (6px).
  - Text: `textSkillTag` (`colorSkillText`).
- **Layout**: Skill tags are organized within a `Wrap` widget with `spacing: spacingSm` and `runSpacing: spacingSm`.

### C. Contact Item
- **Purpose**: Displays interactive contact channels (Phone, Email, LinkedIn, GitHub).
- **Visuals**:
  - Interactive pill container: `colorSurface` with border `colorBorder`.
  - Padding: Horizontal `spacingMd` (16px), Vertical `spacingMd` (16px).
  - Border radius: `radiusMd` (12px).
  - Icon: Centered in a circular background of `colorBackground`, displaying appropriate service icon (size `iconSizeMd`).
- **Interaction**: Features custom `InkWell` splash effects linked to URL launching.

### D. Multimedia Card
- **Purpose**: The "About Me" video preview.
- **Visuals**:
  - Preview card width: Match parent layout constraints. Height: Aspect ratio 16:9.
  - Image: `img/identity-app-img.png` as placeholder thumbnail with `colorMediaOverlay` applied at `0.3` opacity.
  - Border radius: `radiusLg` (20px).
  - Play Button: Stacked in the absolute center, circular button (`radiusCircle`) colored `colorSurface`, featuring icon `Icons.play_arrow` in `colorAccent` (size `iconSizeLg`).
  - Description: Placed directly underneath with top padding `spacingMd` (16px), using `textBody` (`colorTextSecondary`).

### E. Section Header
- **Purpose**: Labels a major profile grouping (Skills, Contact, About Me).
- **Visuals**:
  - Typography: `textHeading` (`colorTextPrimary`), left-aligned.
  - Bottom padding: `spacingMd` (16px).
  - Subtle horizontal divider: Optional thin border below the text or simple spacing to enforce hierarchy.

### F. Study Program Badge
- **Purpose**: Highlights the developer's course of study (Informatika).
- **Visuals**:
  - Container background: `colorBadgeBg`.
  - Padding: Horizontal `spacingMd` (16px), Vertical `spacingSm` (8px).
  - Border radius: `radiusCircle` (999px) for a modern pill shape.
  - Icon: Leading icon `Icons.school_outlined` (size `iconSizeSm`), colored `colorBadgeText`.
  - Text: `textBadge` (`colorBadgeText`).

### G. Screen Container
- **Purpose**: Parent viewport wrapping the app.
- **Visuals**:
  - Background color: `colorBackground`.
  - Padding: Top/Bottom `spacingXl` (32px), Left/Right `spacingLg` (24px).
  - Scrolling: Enabled through `SingleChildScrollView` to support devices of all heights.

---

## 11. Component States

To optimize touch feedback on mobile screens, the following interactive states are defined:

- **Default State**: White surface cards with thin borders, low elevation.
- **Pressed State**: Triggered when a contact card or multimedia card is tapped. The background changes to `colorBackground` with a subtle overlay color and the shadow reduces slightly.
- **Disabled State**: Used for inactive buttons/fields. Colored `#E5E7EB` with text colored `#9CA3AF`.
- **Loading State**: Uses `CircularProgressIndicator` with `valueColor` set to `colorPrimary` centered over a semi-transparent surface.

---

## 12. Interaction and Motion Guidelines

- **Tap Feedback**: Every interactive component must wrap its target within a Material `InkWell` or `IconButton` to provide immediate ripple and splash feedback using `colorBackground`.
- **Multimedia Play Transition**: Upon tapping the play button, the icon transits from `Icons.play_arrow` to `Icons.pause` with a duration of `200ms` using `Curves.easeInOut`.
- **Scroll Behavior**: Standard iOS physics (`BouncingScrollPhysics`) is applied across all scrolling lists to ensure natural, elastic feeling.

---

## 13. Accessibility Guidelines

- **Contrast Ratios**: All background-to-foreground color pairings meet WCAG AAA guidelines (contrast ratio >= 7:1) for body text, and WCAG AA (contrast ratio >= 4.5:1) for small captions.
- **Touch Target Sizes**: All interactive elements (Contact Items, Play Button, Links) guarantee a minimum touch target dimensions of 48x48 logical pixels.
- **Screen Reader Support**: All image elements (including the Avatar) specify `semanticsLabel` parameters. Icons must have decorative labels or clear contextual accessibility descriptions.
- **Text Scaling**: Avoid hardcoding widget heights in layout blocks. Text is allowed to scale up natively per user OS settings without clipping.

---

## 14. Flutter Implementation Guidelines

The design system is implemented in Flutter by defining a clean, cohesive `ThemeData` structure:

### Project Structure (Recommendation)
```text
lib/
├── core/
│   └── theme/
│       ├── app_colors.dart      // Hex Color declarations
│       ├── app_spacing.dart     // Margin & Padding constants
│       ├── app_typography.dart  // TextStyle maps using Inter
│       ├── app_theme.dart       // ThemeData compiler
│       └── app_radius.dart      // BorderRadius constants
└── widgets/
    ├── profile_header.dart      // Profile Header widget
    ├── skill_tag.dart           // Skill Tag widget
    ├── contact_item.dart        // Contact Item row widget
    └── multimedia_card.dart     // About Me multimedia card
```

### ThemeData Snippet
```dart
final ThemeData appTheme = ThemeData(
  brightness: Brightness.light,
  scaffoldBackgroundColor: const Color(0xFFF8F9FA),
  primaryColor: const Color(0xFF3B82F6),
  colorScheme: const ColorScheme.light(
    primary: Color(0xFF3B82F6),
    secondary: Color(0xFF4F46E5),
    surface: Color(0xFFFFFFFF),
    background: Color(0xFFF8F9FA),
    error: Color(0xFFEF4444),
  ),
  textTheme: const TextTheme(
    headlineLarge: TextStyle(fontFamily: 'Inter', fontSize: 24, fontWeight: FontWeight.bold, color: Color(0xFF1F2937)),
    bodyLarge: TextStyle(fontFamily: 'Inter', fontSize: 16, fontWeight: FontWeight.normal, color: Color(0xFF4B5563)),
    labelMedium: TextStyle(fontFamily: 'Inter', fontSize: 14, fontWeight: FontWeight.w500, color: Color(0xFF4B5563)),
  ),
  iconTheme: const IconThemeData(
    color: Color(0xFF4B5563),
    size: 24.0,
  ),
);
```

---

## 15. Design Token Reference

| Type | Token | Value | Description |
| :--- | :--- | :--- | :--- |
| **Color** | `colorPrimary` | `#3B82F6` | Accent color |
| **Color** | `colorBackground` | `#F8F9FA` | Main screen backdrop |
| **Color** | `colorSurface` | `#FFFFFF` | Core container / cards |
| **Color** | `colorTextPrimary` | `#1F2937` | Bold headers / Name |
| **Spacing**| `spacingSm` | `8.0` | Close elements spacer |
| **Spacing**| `spacingMd` | `16.0` | Normal component paddings |
| **Spacing**| `spacingLg` | `24.0` | Outer side-safe margins |
| **Radius** | `radiusMd` | `12.0` | Component corner radius |
| **Radius** | `radiusLg` | `20.0` | Large container corner radius |
| **Size** | `avatarSize` | `110.0` | Circle Avatar diameter |

---

## 16. Screen Structure

```text
My Digital Identity App (Root)
│
└── Profile Screen (SingleChildScrollView)
    └── Padding (spacingLg: 24.0)
        └── Column
            ├── Profile Header (Center Aligned)
            │   ├── CircleAvatar (img/profile-picture.png, diameter: 110)
            │   ├── SizedBox (spacingMd)
            │   ├── Text (Samuel Julian Kumaat)
            │   ├── SizedBox (spacingXs)
            │   ├── Text (NIM: 2411041)
            │   ├── SizedBox (spacingMd)
            │   └── Study Program Badge (Row: Pill container -> Icon + Informatika)
            │
            ├── SizedBox (spacingXl)
            ├── Section Header (Skills)
            ├── Wrap (Skill Tags: individual skill chips)
            │
            ├── SizedBox (spacingXl)
            ├── Section Header (Contact)
            ├── Column (Contact Items: Row -> Icon inside pill + text)
            │
            ├── SizedBox (spacingXl)
            ├── Section Header (About Me)
            └── Multimedia Card (Stack: Thumbnail + Dark Overlay + Play button)
                ├── SizedBox (spacingMd)
                └── Text (Perjalanan belajar & project pilihan saya.)
```
