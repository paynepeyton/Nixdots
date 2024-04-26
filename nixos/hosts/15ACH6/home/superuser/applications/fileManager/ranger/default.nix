{
	pkgs,
	...
}: {
	programs = {
		ranger = {
			enable = true;
			settings = {
				preview_files = false;
				draw_borders = "both";
				hostname_in_titlebar = false;
				padding_right = false;
				save_console_history = false;
				autosave_bookmarks = false;
				save_backtick_bookmark = false;
				save_tabs_on_exit = false;
			};
			extraConfig = ''
				default_linemode devicons
			'';
			rifle = [
				{
					condition = "ext tar|gz|bz2|xz, has tar";
					command = ''tar vvtf "$1" | $PAGER'';
				}
				{
					condition = "ext tar|gz|bz2|xz, has tar";
					command = ''for file in "$@"; do tar vvxf "$file"; done'';
				}
				{
					condition = "ext zip, has unzip";
					command = ''unzip -l "$1" | $PAGER'';
				}
				{
					condition = "ext zip, has unzip";
					command = ''for file in "$@"; do unzip "$file" -d `basename "$file" .zip`; done'';
				}
				{
					condition = "ext 7z, has 7z";
					command = ''7z l "$1" | $PAGER'';
				}
				{
					condition = "ext 7z, has 7z";
					command = ''for file in "$@"; do 7z x "$file" -o`basename "$file" .7z`; done'';
				}
				{
					condition = "ext iso, has 7z";
					command = ''7z l "$1" | $PAGER'';
				}
				{
					condition = "ext iso, has 7z";
					command = ''for file in "$@"; do 7z x "$file" -o`basename "$file" .iso`; done'';
				}
				{
					condition = "ext rar, has unrar";
					command = ''unrar l "$1" | $PAGER'';
				}
				{
					condition = "ext rar, has unrar";
					command = ''for file in "$@"; do unrar x "$file" -op`basename "$file" .rar`; done'';
				}
				{
					condition = "mime ^text, label editor";
					command = ''$EDITOR "$@"'';
				}
				{
					condition = "!mime ^text, label editor, ext nix|rs|c|cpp|lua|js|ts|css";
					command = ''$EDITOR "$@"'';
				}
				{
					condition = "mime ^image, has imv, X, flag f";
					command = ''imv "$@"'';
				}
				{
					condition = "mime ^audio|ogg$, terminal, has mpv";
					command = ''mpv "$@"'';
				}
				{
					condition = "mime ^video, has mpv, X, flag f";
					command = ''mpv "$@"'';
				}
				{
					condition = "ext pdf, has zathura, X, flag f";
					command = ''zathura "$@"'';
				}
				{
					condition = "ext pptx?|od[dfgpst]|docx?|sxc|xlsx?|xlt|xlw|gnm|gnumeric, has libreoffice, X, flag f";
					command = ''libreoffice "$@"'';
				}
				{
					condition = "label open, has xdg-open";
					command = ''xdg-open "$@"'';
				}
			];
			plugins = [
				{
					name = "devicons";
					src = pkgs.fetchFromGitHub {
						owner = "alexanderjeurissen";
						repo = "ranger_devicons";
						rev = "ed718dd6a6d5d2c0f53cba8474c5ad96185057e9";
						sha256 = "0shsfgh9l9lcl9jfskwjy7czzf20myjmmvw62jl5n88327fkac8i";
					};
				}
			];
		};
	};

	home = {
		packages = with pkgs; [
			zip
			unzip
			p7zip
			rar
		];
	};
}
