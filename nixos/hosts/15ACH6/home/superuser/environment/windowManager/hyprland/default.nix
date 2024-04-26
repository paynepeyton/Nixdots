{
	...
}: {
	imports = [
		./ecosystem/hyprpaper
		./ecosystem/hyprlock
		./ecosystem/hypridle
	];

	wayland = {
		windowManager = {
			hyprland = {
				enable = true;
				xwayland = {
					enable = true;
				};
				systemd = {
					enable = true;
				};
				settings = {
					monitor = [
						"eDP-1, 1920x1080@165, 0x0, 1"
						", preferred, auto, 1, mirror, eDP-1"
					];
					input = {
						kb_layout = "us, th";
						kb_options = "caps:none, grp:win_space_toggle";
						numlock_by_default = true;
						touchpad = {
							natural_scroll = true;
						};
						accel_profile = "flat";
					};
					bind =
					let
						bind = mod: cmd: key: arg: "${mod}, ${key}, ${cmd}, ${arg}";
						mod = "super";
						moveFocus = bind "${mod}" "movefocus";
						moveWorkspace = bind "${mod}" "workspace";
						moveToWorkspace = bind "${mod} shift" "movetoworkspace";
						workspaces = [ 1 2 3 4 5 6 7 8 9 0 ];
						screenlock = "hyprlock";
						outputScreenshot = "grim - | swappy -f -";
						regionScreenshot = ''grim -g "`slurp`" - | swappy -f -'';
						terminal = "kitty";
						editor = "${terminal} nvim";
						fileManager = "${terminal} ranger";
						systemMonitor = "${terminal} btop";
					in [
						"${mod} shift, l, exec, ${screenlock}"
						"${mod}, print, exec, ${outputScreenshot}"
						"${mod} shift, print, exec, ${regionScreenshot}"
						"${mod}, q, killactive"
						"${mod}, f, togglefloating"
						"${mod}, s, togglesplit"
						"${mod} shift, s, swapsplit"
						"${mod}, p, pseudo"
						"${mod}, f11, fullscreen"
						"${mod}, t, exec, ${terminal}"
						"${mod}, e, exec, ${editor}"
						"${mod}, r, exec, ${fileManager}"
						"${mod}, escape, exec, ${systemMonitor}"
						(moveFocus "left" "l")
						(moveFocus "right" "r")
						(moveFocus "up" "u")
						(moveFocus "down" "d")
					]	++ (map (i: if i == 0 then moveWorkspace (toString i) "10" else moveWorkspace (toString i) (toString i)) workspaces)
						++ (map (i: if i == 0 then moveToWorkspace (toString i) "10" else moveToWorkspace (toString i) (toString i)) workspaces)
					;
					bindm =
					let
						mod = "super";
					in [
						"${mod}, mouse:273, resizewindow"
						"${mod}, mouse:272, movewindow"
					];
					windowrulev2 = [
						"suppressevent maximize, class:.*"
						"float, class:.*"
						"opacity 0.9 0.9 1.0, class:.*"
					];
					general = {
						gaps_in = 10;
						gaps_out = 20;
						border_size = 2;
						"col.active_border" = "rgb(81A1C1)";
						"col.inactive_border" = "rgb(3B4252)";
					};
					decoration = {
						rounding = 5;
						drop_shadow = true;
						shadow_range = 20;
						shadow_render_power = 3;
						"col.shadow" = "rgb(1E222A)";
					};
					dwindle = {
						preserve_split = true;
						smart_split = true;
						smart_resizing = true;
					};
					misc = {
						disable_hyprland_logo = true;
						disable_splash_rendering = true;
						background_color = "rgb(2E3440)";
						vrr = 1;
					};
					animations = {
						enabled = true;
						bezier = "bezier, 0.05, 0.9, 0.1, 1.05";
						animation = [
							"windows, 1, 5, bezier"
							"windowsOut, 1, 7, default, popin 80%"
							"border, 1, 10, default"
							"fade, 1, 7, default"
							"workspaces, 1, 6, default"
						];
					};
				};
			};
		};
	};
}
