---
icon: material/history
---

# Changelog

## [0.02] - 2025.6.28

- Added checks using both paths and GUIDs, with repairs based on either identifier to reduce missing-scene issues.
- Improved startup and loading speed, and added a progress bar during refreshes.
- Improved the TagManagementWindow layout.

## [0.03] - 2025.7.19

- Added screenshot sorting based on screenshot timestamps.

## [0.04] - 2025.8.23

- Added double-clicking to open scenes.
- Improved the context menu: right-click directly on a thumbnail without selecting it first.
- Added commands to locate files in Unity's Project window and the system file browser.
- Fixed new screenshots not appearing immediately.
- Fixed delayed GUI refreshes and errors.
- Automatically choose black or white tag text based on the background color.
- Added PNG/JPEG format and quality settings, with removal of old files sharing the same base name when saving.
  - Added the `Screenshot Settings...` window.
  - Moved all menu entries under `Tools/CYN-lab/AvatarSceneBrowser/`.
- Introduced an event bus to improve communication between windows.

## [0.1] - 2025.10

Official release on BOOTH.

## [0.11] - 2025.11.14

Added usage documentation.

## [0.2] - 2026.1

**Managing multiple VRChat avatars in one scene**

- Added screenshots and saved configurations for different avatars in the same scene.
- Double-click a configuration thumbnail or click ▶ in the configuration list to restore the avatars' active states.
- Avatar configuration screenshots have green borders; standard scene screenshots have blue borders.
- The details panel shows whether a configuration contains one active avatar or a combination of avatars.
- Each avatar configuration can have its own tags.

## [0.21] - 2026.1.23

- Fixed UI borders appearing solid black in some Unity versions.

## [0.22] - 2026.3.1

- Added warnings on old configuration screenshots when a scene changes from multiple avatars to a single avatar.
- Added thumbnail warnings when an avatar referenced by a screenshot has been deleted from the currently loaded scene.
- Split the title bar error counts into missing scene files and avatar data issues.

## [0.23] - 2026.3.20

- Renamed the plugin from `AvatarSceneBrowser` to `VRCAvatarSceneBrowser`.
- Updated menu paths to `Tools/CYN-lab/VRCAvatarSceneBrowser/`.
- Fixed the window title appearing as `MainWindow` when opened from the screenshot button.
