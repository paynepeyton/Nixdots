{
	pkgs,
	...
}: {
	hardware = {
		bluetooth = {
			enable = true;
			powerOnBoot = false;
		};
	};

	systemd = {
		user = {
			services = {
				mpris-proxy = {
					wantedBy = [
						"default.target"
					];
					after = [
						"network.target"
						"sound.target"
					];
					serviceConfig = {
						Type = "simple";
						ExecStart = "${pkgs.bluez}/bin/mpris-proxy";
						Restart = "on-failure";
						RestartSec = 1;
						TimeoutStopSec = 10;
					};
				};
			};
		};
	};
}
