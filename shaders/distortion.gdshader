shader_type canvas_item;

uniform sampler2D screen_texture: hint_screen_texture, repeat_enable;
uniform sampler2D noise_texture: repeat_enable;
uniform vec2 speed = vec2(0.1, 0.01);
uniform float intensity = 0.01;

void vertex() {
}

void fragment() {
	float noise = texture(noise_texture, UV + speed * TIME).r;
	vec2 newUV = SCREEN_UV + noise * intensity;
	COLOR = texture(screen_texture, newUV);
}

//void light() {
	// Called for every pixel for every light affecting the CanvasItem.
	// Uncomment to replace the default light processing function with this one.
//}
