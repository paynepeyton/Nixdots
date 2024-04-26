{
	pkgs,
	...
}: {
	services = {
		flatpak = {
			enable = true;
			uninstallUnmanaged = true;
			remotes = [
				{
					name = "flathub";
					location = "https://flathub.org/repo/flathub.flatpakrepo";
				}
			];
			update = {
				onActivation = true;
			};
			packages = [
				"com.usebottles.bottles"
			];
		};
	};

	home = {
		packages = with pkgs; [
			flatpak
		];
	};
}
