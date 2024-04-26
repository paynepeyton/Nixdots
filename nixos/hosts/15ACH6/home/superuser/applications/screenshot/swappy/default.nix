{
	pkgs,
	...
}: {
	xdg = {
		configFile = {
			"swappy/config" = {
				text = ''
					[Default]
					save_dir=~/Pictures/screenshots
					save_filename_format=%Y%m%d%H%M%S-screenshot.png
					show_panel=false
					line_size=5
					text_size=20
					text_font=FantasqueSansM Nerd Font
					paint_mode=brush
					early_exit=true
					fill_shape=false
				'';
			};
		};
	};

	home = {
		packages = with pkgs; [
			swappy
		];
	};
}
