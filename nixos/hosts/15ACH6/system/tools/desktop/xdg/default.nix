{
	pkgs,
	...
}: {
	xdg = {
		portal = {
			enable = true;
			config = {
				common = {
					default = [
						"hyprland"
						"gtk"
					];
				};
			};
			extraPortals = with pkgs; [
				xdg-desktop-portal-gtk
			];
		};
	};
}
