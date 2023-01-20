if(keyboard_check(ord("A"))){
	image_angle = image_angle + 5;
}

if(keyboard_check(ord("D"))){
	image_angle = image_angle - 5;
}

if(keyboard_check(ord("W"))){
	motion_add(image_angle, 0.05);
}

if(keyboard_check_pressed(vk_space)){
	var inst = instance_create_layer(x,y, "Instances", Obj_bullets)
	inst.direction = image_angle;
}

move_wrap(true,true,sprite_height/2);