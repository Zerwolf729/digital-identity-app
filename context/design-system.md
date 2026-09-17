# Task: Create design-system.md for My Digital Identity App

You are a senior UI/UX designer and Flutter design-system architect.

Your task is to create a comprehensive `design-system.md` file for a Flutter mobile app called **My Digital Identity App**.

This app is a mini portfolio project that introduces the developer's digital identity through a personal profile.

The design system must be practical, consistent, easy to implement in Flutter, and suitable for a beginner-friendly portfolio project.

---

## 1. Project Context

App name: My Digital Identity App

Purpose:
Create a simple, elegant, and professional digital identity profile that showcases the developer's personal information, skills, contact details, avatar, and a multimedia section.

Technology:
- Flutter
- Dart
- Material Design components where appropriate

The app should be a single-page digital profile.

Do not overcomplicate the project. Keep the design system focused on the essential UI components needed for this app.

---

## 2. Developer Information

Use the following information in the design system when describing UI examples:

- Full name: Samuel Julian Kumaat
- NIM: 2411041
- Study program: Informatika

Skills:
- JavaScript
- React
- Tailwind CSS
- UI/UX
- Node.js
- Git/GitHub
- Figma
- Flutter

Contact information:
- Phone number: Use a placeholder
- Email: Use a placeholder
- LinkedIn: Use a placeholder
- GitHub: Use a placeholder

Multimedia section:
- Section title: About Me
- Multimedia: Video placeholder
- Description: Use placeholder text

Do not invent real personal contact details.

---

## 3. Visual Reference

The attached reference image is the PRIMARY visual reference for the app.

Analyze the reference image carefully before defining the design system.

The reference contains a personal profile interface with elements such as:

- A mobile profile layout
- A profile header
- An avatar
- Developer name and identification
- Study program badge
- Skills displayed as small tags
- Contact information with icons
- An About Me multimedia section
- A video thumbnail with a play button
- A short description below the multimedia section

IMPORTANT:

The reference image shows a DARK interface, but the requested app must use a **LIGHT THEME**.

Use the reference image to understand:

- Overall layout and hierarchy
- Component placement
- Spacing relationships
- Border radius
- Typography hierarchy
- Icon placement
- Card proportions
- Visual density
- Profile presentation style

Do NOT copy the dark color scheme.

Instead, translate the visual structure into a clean, modern, and professional light theme.

Do not redesign the app into a completely different layout.

Do not add unnecessary screens or features.

---

## 4. Image Assets

The project contains an `img` folder with the following assets:

- `img/identity-app-img.png`
  - This is the reference image for the UI design.
  - Use it as the primary visual reference when analyzing the interface.

- `img/profile-picure.png`
  - This is the developer's avatar.
  - The design system must specify how this image should be displayed in the profile header.

IMPORTANT:

- Respect the existing asset filenames.
- Do not rename the assets.
- Do not replace the avatar with a generated image.
- The avatar should be displayed using Flutter's image rendering system.
- Do not convert PNG assets into SVG unless there is a specific technical requirement.
- The reference image should guide the design, but it does not need to be displayed inside the final app.

If the exact colors cannot be extracted from the reference, define reasonable light-theme colors inspired by the visual style.

---

## 5. Main Goal of design-system.md

Create a clear and detailed design system that defines the visual language and reusable UI rules for the entire app.

The document must help a Flutter developer implement the UI consistently without having to make major design decisions independently.

The design system should include the following sections.

---

## 6. Required Sections in design-system.md

### 6.1 Design Principles

Define the core design principles of the app.

Focus on:

- Minimalism
- Professional personal branding
- Clear information hierarchy
- Readability
- Visual consistency
- Mobile-first design
- Simplicity
- Accessibility

Explain how these principles apply to this specific app.

---

### 6.2 Theme and Visual Direction

Define the overall visual direction.

Requirements:

- Light theme only
- Clean and modern appearance
- Professional developer portfolio aesthetic
- Soft visual hierarchy
- Subtle shadows
- Comfortable spacing
- Good contrast
- No excessive decoration

Explain how the light theme should preserve the structure and feel of the reference image.

Do not introduce dark-mode specifications unless they are necessary for explaining what should be avoided.

---

### 6.3 Color System

Define a complete color palette using semantic color tokens.

Include:

- Primary color
- Primary color variations
- Background color
- Surface color
- Secondary surface color
- Text primary
- Text secondary
- Text muted
- Border color
- Divider color
- Accent color
- Success color
- Error color
- Icon color
- Skill tag background
- Skill tag text color
- Badge background
- Badge text color
- Multimedia overlay color

For each color, provide:

- Token name
- Hexadecimal color value
- Intended usage
- Example UI elements

Use colors that work well in a light-themed profile app.

Ensure text and interactive elements have sufficient contrast.

Use semantic names rather than relying only on raw color names.

Example:

```text
colorPrimary
colorBackground
colorSurface
colorTextPrimary
colorTextSecondary
```

---

### 6.4 Typography System

Define the typography system for Flutter.

Include:

- Recommended font family
- Fallback font
- Display text
- Heading styles
- Body text
- Caption text
- Label text
- Button text
- Badge text
- Skill tag text

For each typography style, specify:

- Font size
- Font weight
- Line height
- Letter spacing
- Intended usage

Prioritize readability on mobile devices.

The developer's name should have the strongest visual emphasis in the profile header.

The NIM and study program should have lower visual emphasis.

---

### 6.5 Spacing System

Define a consistent spacing scale.

Use a simple spacing system suitable for Flutter.

For example:

```text
spacingXs
spacingSm
spacingMd
spacingLg
spacingXl
spacingXxl
```

Specify the values in logical pixels.

Explain how the spacing system should be applied to:

- Screen padding
- Profile header
- Section spacing
- Skill tags
- Contact items
- Multimedia cards
- Text spacing
- Button padding

Avoid arbitrary spacing values unless there is a specific design reason.

---

### 6.6 Layout and Grid System

Define the main layout rules for the mobile app.

Include:

- Screen horizontal padding
- Maximum content width
- Vertical section spacing
- Profile header alignment
- Content alignment
- Responsive behavior
- Handling of small mobile screens
- Handling of larger mobile screens

The app should primarily target mobile devices.

The layout should remain readable and visually balanced across different screen sizes.

Describe whether elements should use:

- Column
- Row
- Wrap
- Stack
- Expanded
- Flexible
- SingleChildScrollView

Do not provide complete application code. Focus on design rules and Flutter implementation guidance.

---

### 6.7 Border Radius and Shape System

Define consistent corner radius values.

Include tokens for:

- Small radius
- Medium radius
- Large radius
- Extra-large radius
- Circular elements

Explain how the radius values should be applied to:

- Profile avatar
- Skill tags
- Study program badge
- Contact items
- Multimedia card
- Buttons
- Containers

The avatar should remain circular.

The design should use soft, modern shapes without excessive rounding.

---

### 6.8 Elevation and Shadow System

Define a subtle shadow system for the light theme.

Include:

- No elevation
- Low elevation
- Medium elevation
- High elevation

For each level, explain:

- When to use it
- Which components should use it
- How to avoid excessive shadows

The design should feel lightweight and clean.

---

### 6.9 Iconography System

Define the icon style for the app.

Include:

- Recommended icon style
- Icon size tokens
- Icon color rules
- Icon alignment
- Icon spacing
- Icon container rules

The app needs icons for:

- Email
- Phone
- LinkedIn
- GitHub
- Video playback
- Menu or navigation, if required

Use Flutter-compatible icons.

Prefer a consistent icon family.

Avoid mixing unrelated icon styles.

---

### 6.10 Component Specifications

Define the reusable UI components required by the app.

For each component, provide:

- Component name
- Purpose
- Visual appearance
- Dimensions or sizing rules
- Internal spacing
- Typography
- Colors
- Border radius
- Shadow or elevation
- Icon usage
- Interaction behavior
- Responsive behavior
- Flutter implementation guidance

The following components are REQUIRED:

#### A. Profile Header

Must include:

- Profile avatar
- Full name
- NIM
- Study program
- Study program badge or label

Describe:

- Avatar size
- Header alignment
- Text hierarchy
- Spacing between elements
- Background treatment
- Responsive behavior

#### B. Skill Tag

Must display individual skills.

Skills include:

- JavaScript
- React
- Tailwind CSS
- UI/UX
- Node.js
- Git/GitHub
- Figma
- Flutter

Describe:

- Tag shape
- Padding
- Typography
- Background color
- Text color
- Spacing between tags
- Wrapping behavior

Skills should be displayed using a responsive wrapping layout.

#### C. Contact Item

Must support:

- Phone
- Email
- LinkedIn
- GitHub

Describe:

- Icon placement
- Label or username
- Optional secondary information
- Alignment
- Spacing
- Tap interaction
- Visual feedback

Use placeholders for contact details.

#### D. Multimedia Card

Must represent the About Me section.

Must include:

- Section title
- Video thumbnail placeholder
- Centered play button
- Short description below the video

Describe:

- Card dimensions
- Thumbnail aspect ratio
- Border radius
- Play button appearance
- Overlay behavior
- Description typography
- Placeholder behavior

The multimedia section does not need to play a real video yet.

#### E. Section Header

Define a reusable section title style for:

- Skills
- Contact
- About Me

Describe:

- Typography
- Spacing
- Alignment
- Optional divider or decorative elements

#### F. Study Program Badge

Define the badge used to display:

`Informatika`

Describe:

- Background
- Text
- Icon, if appropriate
- Padding
- Border radius
- Typography

#### G. Screen Container

Define the main screen wrapper.

Describe:

- Background
- Horizontal padding
- Vertical padding
- Scrolling behavior
- Safe area handling
- Content width

---

### 6.11 Component States

Define basic UI states where applicable.

Include:

- Default state
- Pressed state
- Hover state, if relevant to responsive platforms
- Disabled state
- Loading state
- Empty state
- Error state

Focus on practical states for:

- Contact items
- Multimedia card
- Interactive buttons

Do not add complex state management requirements.

---

### 6.12 Interaction and Motion Guidelines

Define simple interaction rules.

Include:

- Tap feedback
- Contact link interaction
- Multimedia play button interaction
- Optional subtle animations
- Animation duration
- Animation curve

The app should feel responsive without excessive animations.

Keep animations simple and appropriate for a beginner portfolio project.

---

### 6.13 Accessibility Guidelines

Define accessibility requirements.

Include:

- Text contrast
- Minimum touch target size
- Readable font sizes
- Semantic labels for icons
- Screen reader support
- Text scaling considerations
- Avoiding information conveyed only through color

Ensure the app is usable by people with different accessibility needs.

---

### 6.14 Flutter Implementation Guidelines

Explain how the design system should be implemented in Flutter.

Include recommendations for:

- `ThemeData`
- `ColorScheme`
- `TextTheme`
- Reusable design tokens
- Reusable widgets
- `EdgeInsets`
- `BorderRadius`
- `BoxShadow`
- `IconTheme`
- Asset management
- Responsive layout

Recommend a simple project structure for design-system-related files.

For example:

```text
lib/
├── core/
│   └── theme/
│       ├── app_colors.dart
│       ├── app_spacing.dart
│       ├── app_typography.dart
│       ├── app_theme.dart
│       └── app_radius.dart
└── widgets/
    ├── profile_header.dart
    ├── skill_tag.dart
    ├── contact_item.dart
    └── multimedia_card.dart
```

This is a recommendation only.

Do not create these files.

Do not implement the actual Flutter UI.

The current task is only to create `design-system.md`.

---

### 6.15 Design Token Reference

Provide a consolidated reference table of all important design tokens.

Include:

- Color tokens
- Typography tokens
- Spacing tokens
- Radius tokens
- Elevation tokens
- Icon size tokens
- Component size tokens

The table should be easy for a Flutter developer to reference during implementation.

---

### 6.16 Screen Structure

Describe the final single-page screen hierarchy.

Use a clear structure such as:

```text
My Digital Identity App
│
└── Profile Screen
    ├── Profile Header
    │   ├── Avatar
    │   ├── Full Name
    │   ├── NIM
    │   ├── Study Program
    │   └── Study Program Badge
    │
    ├── Skills Section
    │   └── Skill Tags
    │
    ├── Contact Section
    │   └── Contact Items
    │
    └── About Me Section
        ├── Multimedia Card
        └── Description
```

Explain the visual hierarchy and spacing between these sections.

---

## 7. Important Design Constraints

Follow these rules strictly:

1. Use a LIGHT THEME.
2. Use the provided reference image as the primary structural reference.
3. Do not redesign the app into a completely different visual style.
4. Do not create additional screens unless absolutely necessary.
5. Do not add unnecessary features.
6. Do not add login, registration, database, backend, or authentication features.
7. Do not add complex animations.
8. Do not invent real contact information.
9. Use placeholders for contact details and multimedia content.
10. Keep the design system easy to implement in Flutter.
11. Make the layout responsive for mobile devices.
12. Prioritize visual consistency and readability.
13. Use reusable components and semantic design tokens.
14. Do not implement Flutter code in this task.
15. Do not modify any existing project files.
16. Only create or update `design-system.md`.

---

## 8. Final Quality Requirements

Before finishing, verify that `design-system.md`:

- Clearly defines the app's visual identity.
- Uses a light color palette.
- Is consistent with the reference image's layout.
- Defines all required design tokens.
- Defines all required components.
- Includes Flutter implementation guidance.
- Includes accessibility guidelines.
- Includes responsive design rules.
- Uses consistent terminology.
- Avoids unnecessary complexity.
- Is detailed enough for another AI agent to implement the UI accurately.
- Does not contain contradictory design rules.

Write the document in clear, structured English using Markdown.

Use tables, bullet points, and code blocks where helpful.

Do not generate the Flutter application yet.

The only expected output is the completed `design-system.md` file.