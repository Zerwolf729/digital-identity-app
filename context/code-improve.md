# Code Improvement Prompt — Flutter Digital Identity App

## Goal

Improve the existing Flutter Digital Identity App codebase by fixing major errors, removing incomplete placeholders, implementing the real video asset, and improving the overall UI implementation.

The app should use a **modern dark theme** while preserving the existing Digital Identity profile structure and design direction.

Do **not** redesign the app from scratch.

---

## 1. Read the Project First

Before changing anything, inspect the actual project.

Read:

* `AGENTS.md` if it exists
* existing design-system documentation
* `pubspec.yaml`
* all files inside `lib/`
* `android/`
* `assets/`
* existing README/documentation if relevant

Inspect the current implementation and identify actual problems before editing.

Do not blindly follow this prompt if something is already implemented correctly.

---

## 2. Fix Major Errors First

Find and fix all major issues that prevent the Flutter app from working correctly.

Check especially:

* Dart compilation errors
* Flutter analyzer errors
* incorrect imports
* missing dependencies
* missing assets
* invalid asset paths
* widget/runtime errors
* layout overflow
* broken scrolling
* responsive layout problems
* null-safety problems
* Android build/configuration problems
* Gradle/NDK configuration problems

If an Android toolchain issue exists, inspect the current configuration first and apply the smallest correct fix.

Do not unnecessarily change the Android toolchain.

---

# 3. Implement a Dark Theme

The Digital Identity Profile App must use a **dark theme as the primary visual theme**.

Do not simply invert the existing colors.

Create a clean, intentional dark UI that is comfortable to read and visually consistent.

### Dark Theme Direction

Use:

* dark background
* slightly lighter dark surfaces/cards
* high-contrast primary text
* softer secondary text
* subtle borders/dividers
* a clear accent color for important elements
* consistent rounded cards
* subtle elevation/depth

The overall visual style should feel:

* modern
* clean
* minimal
* professional
* suitable for a developer portfolio
* visually balanced
* not overly colorful

Avoid:

* pure white backgrounds
* excessive gradients
* excessive glow effects
* excessive shadows
* overly bright colors
* unnecessary glassmorphism
* cluttered decorations

### Theme Consistency

Apply the dark theme consistently to:

* `Scaffold`
* profile section
* identity information
* skill chips
* contact cards
* About Me section
* multimedia/video card
* buttons
* icons
* text
* dividers
* any other visible component

Make sure there are no accidental light-theme components.

Prefer using Flutter's `ThemeData` and centralized theme values instead of hardcoding colors throughout widgets.

If appropriate, create or improve:

```text
lib/theme/
```

or the existing theme structure.

Do not introduce unnecessary architecture.

---

# 4. Preserve the Digital Identity Content

Keep the existing identity information:

* Name: Samuel Julian Kumaat
* NIM: 2411041
* Program: Informatika

Skills:

* JavaScript
* React
* Tailwind CSS
* UI/UX
* Node.js
* Git/GitHub
* Figma
* Flutter

Use the existing profile image asset if already present.

Do not replace provided assets with generated or remote images.

---

# 5. Replace the Video Placeholder With the Real Video

The current About Me multimedia section contains a video placeholder.

Replace it with the real local video:

```text
assets/video/intro-video.mp4
```

If the current project uses another asset structure, inspect it first and use the actual existing location.

Do not duplicate the video unnecessarily.

### Requirements

* Add the video asset to `pubspec.yaml` if needed.
* Use Flutter's `video_player` package unless an existing suitable video package is already implemented.
* Add the dependency only when required.
* Initialize the video controller correctly.
* Dispose the controller correctly.
* Show a loading state while initializing.
* Show an error state if the video cannot load.
* Provide basic play/pause interaction.
* Keep the video inside the existing About Me multimedia section.
* Preserve the current layout hierarchy.
* Do not create a separate video screen.
* Do not autoplay with sound.
* Do not use an online video URL.

The placeholder must be completely replaced by the actual:

```text
intro-video.mp4
```

---

# 6. Preserve the Existing Design System

The existing Design System remains the structural source of truth.

Preserve:

* profile/avatar presentation
* identity information hierarchy
* skills section
* contact section
* About Me section
* multimedia section
* card-based structure
* spacing hierarchy
* rounded components
* mobile-first layout

The main visual change requested in this task is the transition to a **dark theme**.

Do not:

* redesign the app from scratch
* add authentication
* add backend/database functionality
* add unnecessary navigation
* add extra screens
* add unnecessary animations
* add unrelated features
* introduce unnecessary dependencies

---

# 7. Improve Flutter Code Quality

Refactor only where useful.

Prefer:

* reusable widgets
* clear widget responsibilities
* `const` constructors where appropriate
* proper null safety
* meaningful names
* centralized theme values
* centralized repeated constants
* clean asset references
* proper video controller lifecycle
* minimal code duplication

Keep the architecture simple.

This is a small Digital Identity portfolio app. Do not over-engineer it.

Do not introduce a state-management library unless it is genuinely necessary.

---

# 8. Responsive and Layout Stability

The app must work correctly on the Android emulator and different screen sizes.

Check for:

* `RenderFlex overflow`
* clipped text
* cards exceeding screen width
* oversized profile images
* skill chips overflowing
* contact information being clipped
* video exceeding its container
* excessive fixed heights
* unnecessary fixed widths

Use Flutter layout tools appropriately:

* `Expanded`
* `Flexible`
* `Wrap`
* `SingleChildScrollView`
* `LayoutBuilder`

The main profile page should be vertically scrollable.

There must be no visible overflow or clipping errors.

---

# 9. Asset Handling

Verify every local asset used by the application.

Important asset:

```text
assets/video/intro-video.mp4
```

Also verify the existing profile/avatar image.

Make sure:

* files actually exist
* paths are correct
* `pubspec.yaml` declarations are correct
* filename casing is correct
* Android can load the assets

Do not rename existing assets unless absolutely necessary.

---

# 10. Validation

After implementation, run:

```bash
flutter pub get
flutter analyze
flutter test
flutter build apk --debug
```

If there are no meaningful tests, do not create unnecessary test infrastructure just to satisfy the command.

Also run the app on the available Android emulator and manually verify:

1. App launches successfully.
2. Dark background is applied consistently.
3. Text has sufficient contrast.
4. Profile image appears correctly.
5. Name and NIM appear correctly.
6. Program information appears correctly.
7. Skill chips render correctly.
8. Contact section is readable.
9. About Me section appears correctly.
10. Real `intro-video.mp4` loads.
11. Video play/pause works.
12. Video does not autoplay with sound.
13. No video loading error occurs.
14. No layout overflow occurs.
15. Vertical scrolling works.
16. No major runtime errors appear in the debug console.

---

# 11. Important Implementation Rules

* Inspect before editing.
* Fix root causes instead of hiding errors.
* Do not use arbitrary sizing to hide layout problems.
* Do not rewrite working code unnecessarily.
* Do not remove existing functionality.
* Do not replace the existing app structure with a completely different design.
* Implement the requested dark theme intentionally.
* Use centralized Flutter theme configuration where practical.
* Use the real local `intro-video.mp4`.
* Do not use a remote video.
* Keep the code beginner-friendly and maintainable.
* Keep the project simple.

---

# Acceptance Criteria

The task is complete when:

* The Flutter project has no major analyzer/compilation errors.
* The app builds successfully for Android debug.
* The app launches successfully on the emulator.
* The Digital Identity UI remains consistent with the existing structure.
* The app uses a polished dark theme throughout.
* Text and UI elements have good contrast.
* Major runtime/layout problems are fixed.
* The video placeholder is completely removed.
* `assets/video/intro-video.mp4` is used as the actual About Me video.
* The video initializes and plays correctly.
* Video resources are disposed correctly.
* The app remains responsive and scrollable.
* No unnecessary features or architecture were introduced.

At the end, provide a concise summary of:

1. Problems found.
2. Files changed.
3. Dark-theme changes.
4. Video implementation.
5. Packages added or changed.
6. Validation commands and results.
7. Any remaining issue that could not be fixed.
