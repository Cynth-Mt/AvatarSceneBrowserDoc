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
- Selected avatar configuration screenshots have green borders; selected standard scene screenshots have blue borders.
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

## *ver0.3 2026.11.2*

**Bug fixes**

- Configuration screenshots no longer overwrite one another when scenes or avatars share the same name. Retaking a screenshot also preserves the existing configuration and tags.
- If saving an avatar configuration screenshot fails, the original image and its association are preserved, and an error is shown.
- Deleting a single screenshot or configuration no longer removes images shared by other configurations. If deletion fails, the original data is restored.
- Fixed images being left behind after deletion in projects that use symbolic links.
- Canceling a scene switch now also stops the screenshot update.
- Renaming a tag now updates its name in the associated avatar configurations while preserving the tag's color.
- If saving tags fails, the original data is restored, and an error is shown.
- Tag usage counts now include usage in avatar configurations.

**UI improvements**

- Revised avatar status descriptions to make it clearer whether one or multiple avatars are active in a scene containing several avatars. For standard screenshots, the status indicating that the scene has only one or no VRChat avatars appears only after opening the corresponding scene.
- The preview on the right now refreshes when a screenshot is updated, so it no longer shows an outdated image.
- Improved the layout of small windows to keep buttons and settings easier to see.
- When filtering hides the selected card, the details panel is also cleared to avoid confusion about which item an operation affects.

**Translation improvements**

- Shortened some Japanese and English button labels to reduce text clipping.
- Completed the deletion confirmation translations to avoid mixing Chinese and Japanese.

## *ver0.4 2026.11.13*

**Bug fixes and UI improvements**

- If data cannot be loaded, the original files are preserved and related save and screenshot operations are stopped.
- Fixed an issue where some older scene records were lost during migration.
- Fixed screenshot registration interfering across multiple projects.
- Improved recovery after tag saves fail, and protected images still used by other records when deleting screenshots.
- Bulk refresh no longer changes Unity's automatic refresh setting.
- Refined sorting labels and button tooltips, with corresponding updates to the Chinese, Japanese, and English translations.
