# data modify storage slm:ratio_input a set from storage slm:original_distance distance
data modify storage slm:ratio_input b set from storage slm:ray_distance distance

function slm:private/math/ratio with storage slm:ratio_input

function slm:private/math/multiply_scale