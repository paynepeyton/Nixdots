{
	...
}: {
	programs = {
		hyprlock = {
			enable = true;
			general = {
				disable_loading_bar = true;
				hide_cursor = true;
				ignore_empty_input = true;
			};
			backgrounds = [
				{
					monitor = "";
					path = "screenshot";
					blur_passes = 1;
					blur_size = 7;
					noise = 0.0;
					contrast = 1.0;
					brightness = 0.7172;
					vibrancy = 0.1696;
					vibrancy_darkness = 0.0;
				}
			];
			input-fields = [
				{
					monitor = "";
					size = {
						width = 333;
						height = 50;
					};
					outline_thickness = 3;
					dots_size = 0.30;
					dots_spacing = 0.30;
					dots_center = true;
					dots_rounding = -1;
					outer_color = "rgb(81A1C1)";
					inner_color = "rgb(2E3440)";
					font_color = "rgb(81A1C1)";
					fade_on_empty = false;
					fade_timeout = 1300;
					placeholder_text = "<i>Password</i>";
					hide_input = false;
					rounding = -1;
					check_color = "rgb(EBCB8B)";
					fail_color = "rgb(BF616A)";
					fail_text = "<i>Authorization failed</i>";
					fail_transition = 300;
					capslock_color = "-1";
					numlock_color = "-1";
					bothlock_color = "-1";
					invert_numlock = false;
					swap_font_color = false;
					position = {
						x = 0;
						y = -20;
					};
					halign = "center";
					valign = "center";
				}
			];
			labels = [
				{
					monitor = "";
					text = "$TIME"; 
					color = "rgb(81A1C1)";
					font_size = 90;
					font_family = "FantasqueSansM Nerd Font Bold";
					position = {
						x = 0;
						y = 80;
					};
					halign = "center";
					valign = "center";
				}
			];
		};
	};
}
