{
	pkgs,
	...
}: {
	services = {
		hyprpaper = {
			enable = true;
			splash = false;
			preloads = [
				"~/.config/hypr/wallpapers/default.png"	
			];
			wallpapers = [
				", ~/.config/hypr/wallpapers/default.png"
			];
		};
	};

	xdg = {
		configFile = {
			"hypr/wallpapers/default.png" = {
				source = pkgs.fetchurl {
					url = "https://raw.githubusercontent.com/paynepeyton/Nixdots/main/assets/images/background/default.png";
					sha256 = "0qa1sbk6apynz608ghhq26vvwl9l239lbg8yw3fs50syaldy7w3q";
				};
			};
		};
	};
}
