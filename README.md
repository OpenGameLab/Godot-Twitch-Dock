


This is a fork/based off of https://github.com/issork/gift 

Give credit where due!  That plugin is also in the Godot Asset Library, but is meant to integrate with your apps/games at runtime.

This tweak/my work adds it directly to the editor, so you can see your chat/talk to your viewers while you code.


To use this plugin, you need to create a new application on dev.twitch.tv to get a client ID and possibly a client secret (depending on which authentication method you choose). The redirect URL of your App has to be http://localhost:18297 or the URL you specify in the RedirectingFlow constructor.


To enable it in the editor:

1. You need to add the "twitch_chat_dock" folder to "res://addons/"  (Create an "addons" folder if you don't already have one in your main project folder)
2. You will also need to change the "user.gd" variables to include your token, your twitch username, and your channel name, or it will fail to load.
3. You need to Enable the plugin.   In the Godot top left menu go to Project --> Project Settings -- Plugins, and you should see "Twitch Chat Dock". Enable it. 
4. You will need to reload your project by closing godot and reopening it, or using the handy "Reload Current Project" option under the "Project" menu 

MAKE SURE YOU SET "user.gd" in your .gitignore file!  (If you are uploading it to a public repo!)

If you don't and you make your token public, other people will be able to send messages using your username!