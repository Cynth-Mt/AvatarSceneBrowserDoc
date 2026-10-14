---
icon: material/help-circle
---

# Frequently Asked Questions

### Q: Does the plugin support every render pipeline?

A: It is developed with the Built-in Render Pipeline. Screenshots use the Scene view camera, but not every render pipeline has been tested.

### Q: How can I reduce screenshot file sizes? Why are old images still there after changing formats?

A: Select JPEG in **Screenshot Settings...**, lower the quality, and click **Save**. The settings apply to future screenshots and do not convert existing images. When you retake a screenshot, the plugin removes files with the same base name in other image formats.

Delete unwanted screenshots through the main window. Deleting `Assets/CYN-lab/Avatar_Scene_Browser/Screenshot` directly removes the images but leaves their browser records behind.

### Q: The browser cannot find a scene after I moved or renamed it. What should I do?

A: The plugin records scene GUIDs and paths. When you move or rename a scene in Unity's Project window, its GUID can usually still be used to find it. If the record no longer matches the file, check it with the [GUID Batch Update Tool](./guid-batch-update-tool.md).

The tool must be able to find an existing file through the original path or GUID. It cannot recover a deleted scene.

### Q: What do I need to save avatar configurations?

A: Install VRChat SDK (VRCSDK3). The scene must contain at least two avatars with `VRCAvatarDescriptor`, including inactive avatars. Scenes with only one avatar use standard scene screenshots. Standard screenshots also work without the SDK.

Use the active checkbox on each avatar's root object to set its state. Toggling only the eye icon in the Hierarchy does not set the state recorded by configurations.

### Q: Why doesn't taking another screenshot create a new configuration?

A: In the same scene, the same combination of active avatars updates the existing configuration. A different combination creates a new one. Changing only the view angle, outfit, or pose does not create a separate configuration record.

### Q: Can one avatar screenshot overwrite another?

A: Currently, image filenames for configurations with one active avatar use the scene name and avatar name. Two avatars with the same name in one scene, or identically named avatars in identically named scenes in different folders, can write to the same image file. Use distinct scene and avatar names to avoid this. This applies to configurations with one active avatar in a scene containing multiple avatars, not standard screenshots of scenes that contain only one avatar.

### Q: How is double-clicking different from Open This Scene?

A: Double-clicking a standard screenshot opens the scene. Double-clicking an avatar configuration screenshot also loads the configuration. **Open This Scene** and **Open Scene Only** open the scene without restoring a configuration.

Configurations record the active state of avatar root objects, not outfits, materials, poses, or camera angles.

### Q: How do I update an avatar configuration's image?

A: Double-click the configuration to load it, adjust the Scene view, then click the toolbar screenshot button or **Refresh Current SS** at the top of the main window.

Currently, **Refresh Screenshot** in the context menu, **Open This Scene + Refresh Screenshot** in the details panel, and **Refresh All SS** all use the standard scene screenshot process. They do not restore and update each avatar configuration.

### Q: What does an error icon on a thumbnail mean?

A: It can indicate one of three conditions:

- **Missing scene file**: neither the recorded path nor the GUID can locate the scene. Check it with the [GUID Tool](guid-batch-update-tool.md).
- **Outdated configuration**: the plugin considers the scene record newer than the avatar configuration. It keeps the old configuration and shows a warning. Bulk screenshot refreshes and some tag operations can also trigger this warning, so the icon alone does not mean an avatar was deleted.
- **Avatar not found**: an object in the currently active scene cannot be matched to the configuration's record. Check the avatars in the Hierarchy.

Delete a configuration only after checking that you no longer need it. The GUID Tool handles scene file associations; it cannot repair missing avatar objects in a configuration.

### Q: How do I delete an avatar configuration screenshot?

A: Right-click its thumbnail and choose **Delete Screenshot Data**, or click **✕** in the **Avatar Configuration** list on the right, then confirm.

Currently, deleting the last avatar configuration also removes the scene's browser record, even if a standard screenshot was saved earlier. The Unity scene file is not deleted. To add it back to the browser, open the original scene and take another screenshot.

### Q: Why does a tag show zero usage when a configuration still uses it?

A: Tag Manager currently counts scene tags only, not avatar configuration tags. Renaming or deleting a tag also leaves the old name stored in configurations unchanged. See [Tag Manager](tag-manager.md) for details.

---

## License and support

### Q: Can I use the plugin in commercial projects?

A: Yes. See `LICENSE.md` in the plugin folder for the license terms.

### Q: Why is it free?

A: Because continued maintenance cannot be guaranteed.

------
