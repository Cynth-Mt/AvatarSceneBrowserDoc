---
icon: material/book-open-variant
---

# Quick Start

---

## Step 1: Take a screenshot

Open the scene you want to record and save it as a `.unity` file. Frame your subject in the Scene view; screenshots use the Scene view camera.

After importing the plugin, look for the screenshot and browser buttons in the Scene window toolbar.

![Scene toolbar](img/toolbar01.png)
![Scene toolbar](img/toolbar02.png)

Click the screenshot button to save a thumbnail of the current scene.

![Screenshot button in the light theme](img/gui_Screenshot_light.png){ width="80" }

You can also open the main window from the menu:

`Tools → CYN-lab → VRCAvatarSceneBrowser → Main Window`

Then click **Refresh Current SS** at the top of the window.

![Refresh the current scene screenshot](img/刷新当前打开的场景截图.png)

---

## Step 2: Browse your screenshots

Open the main window using the browser button or the menu above. Saved screenshots appear in the gallery in the center. If this is your first time using the plugin, take a screenshot first.

You can resize thumbnails, sort by name or creation/modification time, and use the search box and tags on the left to find scenes.

[→ Main window details](main-window.md)

---

## Step 3: Open a scene

For a standard scene screenshot, you can:

1. **Double-click the thumbnail**.
2. **Right-click the thumbnail → Open Scene**.
3. **Select the thumbnail → click Open This Scene** on the right.

Double-clicking an avatar configuration thumbnail opens the scene and restores that configuration's active avatars. To open the scene without loading a configuration, use **Open Scene Only** in the context menu or **Open This Scene** on the right.

When switching scenes, Unity prompts you to save if the current scene has unsaved changes.

---

## Step 4: Add tags

Select a thumbnail, choose an existing tag in the panel on the right, and click **Add**. You can also enter a name, choose a color, and click **Create New Tag** to create a tag and add it to the selected item.

Standard screenshots use scene tags. Each avatar configuration has its own tags; adding a tag to one configuration does not add it to the other configurations in the same scene.

See [Tag Manager](tag-manager.md) for editing and managing tags.

---

## Working with multiple avatars in one scene

The current version counts all VRChat avatars in the scene, including inactive ones. Scenes with **at least two avatars** use avatar configurations. Scenes with one or no avatars use standard scene screenshots.

To save a screenshot for each avatar:

1. Select the avatar's root object in the Hierarchy. Activate the avatar you want to capture and deactivate the others using the checkbox at the top of the Inspector. This is different from the eye icon in the Hierarchy. If the avatar has a parent object, keep that parent active too; loading a configuration does not activate parent objects.
2. Frame the Scene view and click the toolbar screenshot button.
3. Repeat for the other avatars. Each configuration gets its own thumbnail in the gallery.

You can also activate several avatars at once and confirm the prompt to save them as a combination. If all avatars are inactive, confirming the prompt saves a **No Avatar** configuration.

!!! info "Taking another screenshot of the same combination"
    If the same set of avatars is active, the plugin updates the existing configuration's image instead of creating a duplicate. To update a configuration, load it first, then use the toolbar screenshot button or **Refresh Current SS** at the top of the main window.

There are three ways to restore a configuration:

- Double-click the configuration's thumbnail.
- Right-click its thumbnail and choose **Open Scene and Load Configuration**.
- Select a thumbnail, then click **▶** beside the configuration in the **Avatar Configuration** panel on the right.

Configurations save the active state of avatar root objects. They do not restore outfits, materials, poses, or the Scene view angle. Save the Unity scene if you want to keep the state you loaded.

!!! info "SDK requirement"
    Avatar configurations require VRChat SDK (VRCSDK3). Without it, you can still take screenshots, but avatar configurations are not saved.

---

## Unity menu

```text
Tools
└── CYN-lab
    └── VRCAvatarSceneBrowser
        ├── Main Window              # Screenshot browser
        ├── GUID Batch Update Tool   # Scene reference repair
        └── Screenshot Settings...   # Image format and quality
```

### Main Window

Browse screenshots, open scenes, filter by tags, and manage avatar configurations.

### GUID Batch Update Tool

Check recorded scene paths and GUIDs, and repair their associations when the original scene file can still be found. [→ Details](guid-batch-update-tool.md)

### Screenshot Settings...

Choose PNG or JPEG. JPEG quality ranges from 1 to 100 and defaults to 80; this quality setting does not apply to PNG. Click **Save** to apply your changes or **Close** to close without saving. These settings affect future screenshots and do not convert existing images in bulk.
