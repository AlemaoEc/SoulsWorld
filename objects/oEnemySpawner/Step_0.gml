/// @description Insert description here
// You can write your code in this editor
xDistance = (camera_get_view_width(oCamera.cam)/2) + 300;

for (var p = 0; p < array_length(enemyPositions); p++) {
	if(abs(oPlayer.x - enemyPositions[p].x) < xDistance && (abs(oPlayer.y - enemyPositions[p].y)) < 100) {
		if (!enemyPositions[p].spawned) {
			enemyPositions[p].spawned = true;
			enemyPositions[p].instance = instance_create_layer(enemyPositions[p].x, enemyPositions[p].y,"Instances", oEnemy);
		}
	}
}