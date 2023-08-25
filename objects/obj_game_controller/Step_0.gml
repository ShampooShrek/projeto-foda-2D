
var _camera_target_x = camera_target.x
var _camera_target_y = camera_target.y

x = lerp(x, _camera_target_x, follow_speed)
y = lerp(y, _camera_target_y, follow_speed)