score += 10;

instance_destroy();

with(other){
	instance_destroy();
	
	if (sprite_index == Spr_asteroid_large){
		repeat(2){
		var new_asteroid = instance_create_layer(x,y,"Instances",Obj_asteroid)
		new_asteroid.sprite_index = Spr_asteroid_med;
		}
	} else if (sprite_index == Spr_asteroid_med){
		repeat(2){
		var new_asteroid = instance_create_layer(x,y,"Instances",Obj_asteroid)
		new_asteroid.sprite_index = Spr_asteroid_small;
		}
	}
	repeat(10){
		instance_create_layer(x,y,"Instances",Obj_debris);
	}
	
}

