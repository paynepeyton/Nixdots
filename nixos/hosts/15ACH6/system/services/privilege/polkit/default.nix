{
	pkgs,
	...
}: {
	security = {
		polkit = {
			enable = true;
		};
	};

	systemd = {
		user = {
			services = {
				polkit-agent-gnome = {
					wantedBy = [
						"default.target"
					];
					after = [
						"graphical-session.target"
					];
					serviceConfig = {
						Type = "simple";
						ExecStart = "${pkgs.polkit_gnome}/libexec/polkit-gnome-authentication-agent-1";
						Restart = "on-failure";
						RestartSec = 1;
						TimeoutStopSec = 10;
					};
				};
			};
		};
	};
}
