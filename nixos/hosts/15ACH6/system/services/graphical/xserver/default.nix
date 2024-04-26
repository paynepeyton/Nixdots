{
	pkgs,
	...
}: {
	services = {
		xserver = {
			enable = true;
			libinput = {
				enable = true;
			};
			excludePackages = with pkgs; [
				xterm
			];
		};
	};
}
