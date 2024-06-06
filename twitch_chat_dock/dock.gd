@tool
extends EditorPlugin


@onready var dock_scene_resource = preload("res://addons/twitch_chat_dock/Dock.tscn")

var dock_instance

func _enter_tree():
	print("Entering tree...")

	
	 #Load the dock scene resource
	var load_result = await ResourceLoader.load("res://addons/twitch_chat_dock/Dock.tscn")
	if load_result == null:
		print("Error: Dock.tscn node path is incorrect.")
		return
	var dock_scene = load_result as PackedScene
	if dock_scene == null:
		print("Error: Dock scene is not a PackedScene.")
		return
	print("Dock scene loaded successfully.")
	
	# Create the dock instance and add it to the dock
	var dock_instance = dock_scene.instantiate()
	if dock_instance == null:
		print("Error: Failed to instantiate the dock scene.")
		return
	print("Dock instance created successfully.")
	dock_instance.name = "Twitch Chat"
	add_control_to_dock(DOCK_SLOT_LEFT_BR, dock_instance)
	print("Dock instance added to dock.")

# No cleanup logic in _exit_tree
