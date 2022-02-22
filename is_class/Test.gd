extends Control

const myClass = preload("res://MyClass.gd")

func _ready():
	var obj = myClass.new() 
	if obj is myClass:
		print("object is of type MyClass")
	else:
		print("object is NOT of type MyClass")
