extends Sprite3D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var c
func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	#print(to_global(get_parent().get_node("camera/base/rotation").translation))
	#print(translation)
	c = get_parent().get_node("camera/base/rotation")

func _process(delta):
	var target =c.to_global(c.get_node("Camera").translation)
	look_at(target,Vector3(0,1,0))
	print(target)
	#pass