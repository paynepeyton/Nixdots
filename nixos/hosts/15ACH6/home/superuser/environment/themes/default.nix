{
	pkgs,
	...
}: {
	gtk = {
		enable = true;
		theme = {
			name = "Colloid-Dark-Compact-Nord";
			package = pkgs.colloid-gtk-theme.override {
				themeVariants = [
					"default"
				];
				colorVariants = [
					"dark"
				];
				sizeVariants = [
					"compact"
				];
				tweaks = [
					"nord"
					"rimless"
				];
			};
		};
		iconTheme = {
			name = "Colloid-nord-dark";
			package = pkgs.colloid-icon-theme.override {
				schemeVariants = [
					"nord"
				];
				colorVariants = [
					"default"
				];
			};
		};
		cursorTheme = {
			name = "Nordzy-cursors";
			package = pkgs.nordzy-cursor-theme;
			size = 24;
		};
		font = {
			name = "FantasqueSansM Nerd Font";
			size = 11;
		};
	};

	qt = {
		enable = true;
		platformTheme = {
			name = "gtk";
		};
		style = {
			name = "gtk2";
		};
	};

	home = {
		pointerCursor = {
			gtk = {
				enable = true;
			};
			name = "Nordzy-cursors";
			package = pkgs.nordzy-cursor-theme;
			size = 24;
		};
		packages = with pkgs; [
			gtk-engine-murrine
		];
	};
}
