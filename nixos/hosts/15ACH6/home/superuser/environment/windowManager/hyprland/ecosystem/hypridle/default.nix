{
	inputs,
	config,
	pkgs,
	...
}: {
	services = {
		hypridle = {
			enable = true;
			lockCmd = "pidof ${inputs.hyprlock.packages.${pkgs.system}.hyprlock}/bin/hyprlock || ${inputs.hyprlock.packages.${pkgs.system}.hyprlock}/bin/hyprlock";
			beforeSleepCmd = "${pkgs.systemd}/bin/loginctl lock-session";
			afterSleepCmd = "${config.wayland.windowManager.hyprland.package}/bin/hyprctl dispatch dpms on";
			listeners = [
				{
					timeout = 300;
					onTimeout = "${pkgs.systemd}/bin/loginctl lock-session";
				}
				{
					timeout = 330;
					onTimeout = "${config.wayland.windowManager.hyprland.package}/bin/hyprctl dispatch dpms off";
					onResume = "${config.wayland.windowManager.hyprland.package}/bin/hyprctl dispatch dpms on";
				}
				{
					timeout = 600;
					onTimeout = "${pkgs.systemd}/bin/systemctl suspend";
				}
			];
		};
	};
}
