{
	pkgs,
	...
}: {
	fonts = {
		fontDir = {
			enable = true;
		};
		fontconfig = {
			defaultFonts = {
				serif = [
					"FantasqueSansM Nerd Font"
				];
				sansSerif = [
					"FantasqueSansM Nerd Font"
				];
				monospace = [
		   			"FantasqueSansM Nerd Font"
				];
				emoji = [
					"Noto Color Emoji"
				];
			};
		};
		packages = with pkgs; [
			noto-fonts
			noto-fonts-cjk
			noto-fonts-emoji
			(
				nerdfonts.override {
					fonts = [
						"FantasqueSansMono"
					]; 
				}
			)
		];
	};
}
