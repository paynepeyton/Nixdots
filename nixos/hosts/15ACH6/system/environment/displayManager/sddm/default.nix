{
	pkgs,
	...
}: {
	services = {
		displayManager = {
			sddm = {
				enable = true;
				settings = {
					Theme = {
						CursorTheme = "Nordzy-cursors";
						CursorSize = 24;
					};
					Users = {
						RememberLastUser = false;
						RememberLastSession = false;
					};
				};
				autoNumlock = true;
				theme = "${pkgs.sugarcandy-sddm-theme}";
				extraPackages = with pkgs.libsForQt5.qt5; [
					qtsvg
					qtgraphicaleffects
					qtquickcontrols2	
				];
			};
		};
	};

	environment = {
		systemPackages = with pkgs; [
			sugarcandy-sddm-theme
			nordzy-cursor-theme
		];
	};
}
