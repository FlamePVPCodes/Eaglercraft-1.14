#line 2

/*
 * Copyright (c) 2022 Calder Young. All Rights Reserved.
 * 
 * WITH THE EXCEPTION OF PATCH FILES, MINIFIED JAVASCRIPT, AND ALL FILES
 * NORMALLY FOUND IN AN UNMODIFIED MINECRAFT RESOURCE PACK, YOU ARE NOT ALLOWED
 * TO SHARE, DISTRIBUTE, OR REPURPOSE ANY FILE USED BY OR PRODUCED BY THE
 * SOFTWARE IN THIS REPOSITORY WITHOUT PRIOR PERMISSION FROM THE PROJECT AUTHOR.
 * 
 * NOT FOR COMMERCIAL OR MALICIOUS USE
 * 
 * (please read the 'LICENSE' file this repo's root directory for more info) 
 * 
 */

precision lowp int;
precision highp float;
precision lowp sampler2D;

in vec2 v_texCoord2f;
in vec4 v_color4f;

out vec4 output4f;

uniform sampler2D u_inputTexture;
uniform vec4 u_colorBias4f;

void main() {
	output4f = texture(u_inputTexture, v_texCoord2f) * v_color4f + u_colorBias4f;
	if(output4f.a < 0.004) {
		discard;
	}
}
