Uploader Preferences v0.3 for Movable Type allows customization of the default options involved in uploading files and images.

# WHY

I don't like the default "Asset Upload" default options, which is to create a new entry, and to place the file in the root directory.

# USAGE

Set your preferences in the plugin settings.  Currently it supports three options, which can be set independently:

## 'UPLOAD FOLDER BASE' OPTION.
Accepts a path relative to the site root which will hold all new assets and asset directories. Must include the trailing slash (or whatever the system path separator is). This option is set in the plugin preferences, and is not configurable from within the Asset Upload dialogue. In fact, the `Upload Folder Base` is not even visible in the Asset Upload dialogue. The plugin default is 'assets/'.

## 'MAKE THE DATE-BASED FOLDER OPTION THE FIRST CHOICE' OPTION
The MT default first (and therefore default) option is the site or archive root. UploaderPrefs default is the date-based optione (e.g. 'site_root/2012/07/04/'), but you can change the default back to the site root by unchecking the checkbox in the plugin preferences panel. This default is configurable from within the Asset Upload dialogue.


## 'CREATE ENTRY WITH FILE?' OPTION.
MT's default is for that checkbox to be selected. The UploaderPref's plugin default is for the "Create new entry with file" option to be deselected. You can change the default in the plugin preferences panel, or from within the Upload Assets dialogue.

# INSTALLATION
Drop the contents of the "plugins" directory into your application's (Melody or MT) plugin directory.

# REQUIREMENTS
Uploader Preference' has been tested on MT 4.3.

# CHANGES
Version 0.3
- Added `Upload Folder Base` default option.
- Added localization.

# TO DO
I'd like to add other options, such as a default directory.

# COPYRIGHT AND LICENSE

The software is released under the Artistic License. The terms of the Artistic License are described at http://www.perl.com/language/misc/Artistic.html .

Thanks to François Nonnenmacher for code lifted from his [AssetDuJour plugin](http://ubiquitic.com/software/assetdujour-movable-type-plugin.html).

Except where otherwise noted, UploaderPrefs is Copyright 2011, Rick Bychowski, rick@hiranyaloka.com for Hiranyaloka. All rights reserved.
