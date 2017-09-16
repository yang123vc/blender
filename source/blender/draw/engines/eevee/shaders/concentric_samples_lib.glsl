/* Precomputed table of concentric samples.
 * Generated using this algorithm http://l2program.co.uk/900/concentric-disk-sampling
 * Sorted by radius then by rotation angle.
 * This way it's better for cache usage and for
 * easily restricting to a certain number of
 * sample while still having a circular kernel. */

#define CONCENTRIC_SAMPLE_NUM 256
const vec2 concentric[CONCENTRIC_SAMPLE_NUM] =
vec2[CONCENTRIC_SAMPLE_NUM](
	vec2(0.0441941738242, 0.0441941738242),
	vec2(-0.0441941738242, -0.0441941738242),
	vec2(-0.0441941738242, 0.0441941738242),
	vec2(0.0441941738242, -0.0441941738242),
	vec2(0.181111092429, 0.0485285709567),
	vec2(0.132582521472, 0.132582521472),
	vec2(-0.181111092429, 0.0485285709567),
	vec2(0.0485285709567, 0.181111092429),
	vec2(-0.181111092429, -0.0485285709567),
	vec2(-0.0485285709567, 0.181111092429),
	vec2(-0.132582521472, -0.132582521472),
	vec2(-0.132582521472, 0.132582521472),
	vec2(-0.0485285709567, -0.181111092429),
	vec2(0.0485285709567, -0.181111092429),
	vec2(0.132582521472, -0.132582521472),
	vec2(0.181111092429, -0.0485285709567),
	vec2(0.308652606436, 0.0488857703251),
	vec2(0.278439538809, 0.141872031169),
	vec2(0.220970869121, 0.220970869121),
	vec2(-0.278439538809, 0.141872031169),
	vec2(0.141872031169, 0.278439538809),
	vec2(-0.308652606436, 0.0488857703251),
	vec2(0.0488857703251, 0.308652606436),
	vec2(-0.308652606436, -0.0488857703251),
	vec2(-0.0488857703251, 0.308652606436),
	vec2(-0.278439538809, -0.141872031169),
	vec2(-0.141872031169, 0.278439538809),
	vec2(-0.220970869121, -0.220970869121),
	vec2(-0.220970869121, 0.220970869121),
	vec2(-0.141872031169, -0.278439538809),
	vec2(-0.0488857703251, -0.308652606436),
	vec2(0.0488857703251, -0.308652606436),
	vec2(0.141872031169, -0.278439538809),
	vec2(0.220970869121, -0.220970869121),
	vec2(0.278439538809, -0.141872031169),
	vec2(0.308652606436, -0.0488857703251),
	vec2(0.434749091828, 0.0489844582952),
	vec2(0.41294895701, 0.144497089605),
	vec2(0.370441837162, 0.232764033475),
	vec2(0.309359216769, 0.309359216769),
	vec2(-0.370441837162, 0.232764033475),
	vec2(0.232764033475, 0.370441837162),
	vec2(-0.41294895701, 0.144497089605),
	vec2(0.144497089605, 0.41294895701),
	vec2(-0.434749091828, 0.0489844582952),
	vec2(0.0489844582952, 0.434749091828),
	vec2(-0.434749091828, -0.0489844582952),
	vec2(-0.0489844582952, 0.434749091828),
	vec2(-0.41294895701, -0.144497089605),
	vec2(-0.144497089605, 0.41294895701),
	vec2(-0.370441837162, -0.232764033475),
	vec2(-0.232764033475, 0.370441837162),
	vec2(-0.309359216769, -0.309359216769),
	vec2(-0.309359216769, 0.309359216769),
	vec2(-0.232764033475, -0.370441837162),
	vec2(-0.144497089605, -0.41294895701),
	vec2(-0.0489844582952, -0.434749091828),
	vec2(0.0489844582952, -0.434749091828),
	vec2(0.144497089605, -0.41294895701),
	vec2(0.232764033475, -0.370441837162),
	vec2(0.309359216769, -0.309359216769),
	vec2(0.370441837162, -0.232764033475),
	vec2(0.41294895701, -0.144497089605),
	vec2(0.434749091828, -0.0489844582952),
	vec2(0.560359517677, 0.0490251052956),
	vec2(0.543333277288, 0.14558571287),
	vec2(0.509798130208, 0.237722772229),
	vec2(0.460773024913, 0.322636745447),
	vec2(0.397747564417, 0.397747564417),
	vec2(-0.460773024913, 0.322636745447),
	vec2(0.322636745447, 0.460773024913),
	vec2(-0.509798130208, 0.237722772229),
	vec2(0.237722772229, 0.509798130208),
	vec2(-0.543333277288, 0.14558571287),
	vec2(0.14558571287, 0.543333277288),
	vec2(-0.560359517677, 0.0490251052956),
	vec2(0.0490251052956, 0.560359517677),
	vec2(-0.560359517677, -0.0490251052956),
	vec2(-0.0490251052956, 0.560359517677),
	vec2(-0.543333277288, -0.14558571287),
	vec2(-0.14558571287, 0.543333277288),
	vec2(-0.509798130208, -0.237722772229),
	vec2(-0.237722772229, 0.509798130208),
	vec2(-0.460773024913, -0.322636745447),
	vec2(-0.322636745447, 0.460773024913),
	vec2(-0.397747564417, -0.397747564417),
	vec2(-0.397747564417, 0.397747564417),
	vec2(-0.322636745447, -0.460773024913),
	vec2(-0.237722772229, -0.509798130208),
	vec2(-0.14558571287, -0.543333277288),
	vec2(-0.0490251052956, -0.560359517677),
	vec2(0.0490251052956, -0.560359517677),
	vec2(0.14558571287, -0.543333277288),
	vec2(0.237722772229, -0.509798130208),
	vec2(0.322636745447, -0.460773024913),
	vec2(0.397747564417, -0.397747564417),
	vec2(0.460773024913, -0.322636745447),
	vec2(0.509798130208, -0.237722772229),
	vec2(0.543333277288, -0.14558571287),
	vec2(0.560359517677, -0.0490251052956),
	vec2(0.685748328795, 0.0490456884495),
	vec2(0.671788470355, 0.146138636568),
	vec2(0.644152935937, 0.240256623474),
	vec2(0.603404305327, 0.32948367837),
	vec2(0.550372103135, 0.412003395727),
	vec2(0.486135912066, 0.486135912066),
	vec2(-0.550372103135, 0.412003395727),
	vec2(0.412003395727, 0.550372103135),
	vec2(-0.603404305327, 0.32948367837),
	vec2(0.32948367837, 0.603404305327),
	vec2(-0.644152935937, 0.240256623474),
	vec2(0.240256623474, 0.644152935937),
	vec2(-0.671788470355, 0.146138636568),
	vec2(0.146138636568, 0.671788470355),
	vec2(-0.685748328795, 0.0490456884495),
	vec2(0.0490456884495, 0.685748328795),
	vec2(-0.685748328795, -0.0490456884495),
	vec2(-0.0490456884495, 0.685748328795),
	vec2(-0.671788470355, -0.146138636568),
	vec2(-0.146138636568, 0.671788470355),
	vec2(-0.644152935937, -0.240256623474),
	vec2(-0.240256623474, 0.644152935937),
	vec2(-0.603404305327, -0.32948367837),
	vec2(-0.32948367837, 0.603404305327),
	vec2(-0.550372103135, -0.412003395727),
	vec2(-0.412003395727, 0.550372103135),
	vec2(-0.486135912066, -0.486135912066),
	vec2(-0.486135912066, 0.486135912066),
	vec2(-0.412003395727, -0.550372103135),
	vec2(-0.32948367837, -0.603404305327),
	vec2(-0.240256623474, -0.644152935937),
	vec2(-0.146138636568, -0.671788470355),
	vec2(-0.0490456884495, -0.685748328795),
	vec2(0.0490456884495, -0.685748328795),
	vec2(0.146138636568, -0.671788470355),
	vec2(0.240256623474, -0.644152935937),
	vec2(0.32948367837, -0.603404305327),
	vec2(0.412003395727, -0.550372103135),
	vec2(0.486135912066, -0.486135912066),
	vec2(0.550372103135, -0.412003395727),
	vec2(0.603404305327, -0.32948367837),
	vec2(0.644152935937, -0.240256623474),
	vec2(0.671788470355, -0.146138636568),
	vec2(0.685748328795, -0.0490456884495),
	vec2(0.811017637806, 0.0490575291556),
	vec2(0.799191174395, 0.146457218224),
	vec2(0.775710704038, 0.241721231257),
	vec2(0.740918624869, 0.33346040443),
	vec2(0.695322283745, 0.420336974019),
	vec2(0.639586577995, 0.501084084011),
	vec2(0.574524259714, 0.574524259714),
	vec2(-0.639586577995, 0.501084084011),
	vec2(0.501084084011, 0.639586577995),
	vec2(-0.695322283745, 0.420336974019),
	vec2(0.420336974019, 0.695322283745),
	vec2(-0.740918624869, 0.33346040443),
	vec2(0.33346040443, 0.740918624869),
	vec2(-0.775710704038, 0.241721231257),
	vec2(0.241721231257, 0.775710704038),
	vec2(-0.799191174395, 0.146457218224),
	vec2(0.146457218224, 0.799191174395),
	vec2(-0.811017637806, 0.0490575291556),
	vec2(0.0490575291556, 0.811017637806),
	vec2(-0.811017637806, -0.0490575291556),
	vec2(-0.0490575291556, 0.811017637806),
	vec2(-0.799191174395, -0.146457218224),
	vec2(-0.146457218224, 0.799191174395),
	vec2(-0.775710704038, -0.241721231257),
	vec2(-0.241721231257, 0.775710704038),
	vec2(-0.740918624869, -0.33346040443),
	vec2(-0.33346040443, 0.740918624869),
	vec2(-0.695322283745, -0.420336974019),
	vec2(-0.420336974019, 0.695322283745),
	vec2(-0.639586577995, -0.501084084011),
	vec2(-0.501084084011, 0.639586577995),
	vec2(-0.574524259714, -0.574524259714),
	vec2(-0.574524259714, 0.574524259714),
	vec2(-0.501084084011, -0.639586577995),
	vec2(-0.420336974019, -0.695322283745),
	vec2(-0.33346040443, -0.740918624869),
	vec2(-0.241721231257, -0.775710704038),
	vec2(-0.146457218224, -0.799191174395),
	vec2(-0.0490575291556, -0.811017637806),
	vec2(0.0490575291556, -0.811017637806),
	vec2(0.146457218224, -0.799191174395),
	vec2(0.241721231257, -0.775710704038),
	vec2(0.33346040443, -0.740918624869),
	vec2(0.420336974019, -0.695322283745),
	vec2(0.501084084011, -0.639586577995),
	vec2(0.574524259714, -0.574524259714),
	vec2(0.639586577995, -0.501084084011),
	vec2(0.695322283745, -0.420336974019),
	vec2(0.740918624869, -0.33346040443),
	vec2(0.775710704038, -0.241721231257),
	vec2(0.799191174395, -0.146457218224),
	vec2(0.811017637806, -0.0490575291556),
	vec2(0.936215188832, 0.0490649589778),
	vec2(0.925957819308, 0.146657310975),
	vec2(0.905555462146, 0.242642854784),
	vec2(0.875231649841, 0.335969952699),
	vec2(0.835318616427, 0.425616093506),
	vec2(0.786253657449, 0.510599095327),
	vec2(0.728574338866, 0.589987866609),
	vec2(0.662912607362, 0.662912607362),
	vec2(-0.728574338866, 0.589987866609),
	vec2(0.589987866609, 0.728574338866),
	vec2(-0.786253657449, 0.510599095327),
	vec2(0.510599095327, 0.786253657449),
	vec2(-0.835318616427, 0.425616093506),
	vec2(0.425616093506, 0.835318616427),
	vec2(-0.875231649841, 0.335969952699),
	vec2(0.335969952699, 0.875231649841),
	vec2(-0.905555462146, 0.242642854784),
	vec2(0.242642854784, 0.905555462146),
	vec2(-0.925957819308, 0.146657310975),
	vec2(0.146657310975, 0.925957819308),
	vec2(-0.936215188832, 0.0490649589778),
	vec2(0.0490649589778, 0.936215188832),
	vec2(-0.936215188832, -0.0490649589778),
	vec2(-0.0490649589778, 0.936215188832),
	vec2(-0.925957819308, -0.146657310975),
	vec2(-0.146657310975, 0.925957819308),
	vec2(-0.905555462146, -0.242642854784),
	vec2(-0.242642854784, 0.905555462146),
	vec2(-0.875231649841, -0.335969952699),
	vec2(-0.335969952699, 0.875231649841),
	vec2(-0.835318616427, -0.425616093506),
	vec2(-0.425616093506, 0.835318616427),
	vec2(-0.786253657449, -0.510599095327),
	vec2(-0.510599095327, 0.786253657449),
	vec2(-0.728574338866, -0.589987866609),
	vec2(-0.589987866609, 0.728574338866),
	vec2(-0.662912607362, -0.662912607362),
	vec2(-0.662912607362, 0.662912607362),
	vec2(-0.589987866609, -0.728574338866),
	vec2(-0.510599095327, -0.786253657449),
	vec2(-0.425616093506, -0.835318616427),
	vec2(-0.335969952699, -0.875231649841),
	vec2(-0.242642854784, -0.905555462146),
	vec2(-0.146657310975, -0.925957819308),
	vec2(-0.0490649589778, -0.936215188832),
	vec2(0.0490649589778, -0.936215188832),
	vec2(0.146657310975, -0.925957819308),
	vec2(0.242642854784, -0.905555462146),
	vec2(0.335969952699, -0.875231649841),
	vec2(0.425616093506, -0.835318616427),
	vec2(0.510599095327, -0.786253657449),
	vec2(0.589987866609, -0.728574338866),
	vec2(0.662912607362, -0.662912607362),
	vec2(0.728574338866, -0.589987866609),
	vec2(0.786253657449, -0.510599095327),
	vec2(0.835318616427, -0.425616093506),
	vec2(0.875231649841, -0.335969952699),
	vec2(0.905555462146, -0.242642854784),
	vec2(0.925957819308, -0.146657310975),
	vec2(0.936215188832, -0.0490649589778)
);