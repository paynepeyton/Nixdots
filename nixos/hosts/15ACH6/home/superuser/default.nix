{
	arguments,
	...
}: {
	imports = [
		./tools/shell/bash
		./tools/shell/fish
		./tools/shell/prompt/starship
		./tools/desktop/dconf
		./tools/desktop/xdg
		./tools/distribution/flatpak
		./applications/terminals/kitty
		./applications/clipboard/wlclipboard
		./applications/editors/nixvim
		./applications/backlight/brightnessctl
		./applications/audio/pulsemixer
		./applications/bluetooth/bluetuith
		./applications/media/imv
		./applications/media/mpv
		./applications/media/zathura
		./applications/fileManager/ranger
		./applications/systemMonitor/btop
		./applications/screenshot/grim
		./applications/screenshot/slurp
		./applications/screenshot/swappy
		./applications/git
		./applications/concatenate/bat
		./applications/browsers/firefox
		./applications/office/libreoffice
		./applications/utilities/listing
		./services/backlight/wlsunset
		./environment/variables
		./environment/themes
		./environment/windowManager/hyprland
	];

	home = {
		stateVersion = arguments.system.stateVersion;
		username = arguments.host.users.superuser.username;
		homeDirectory = "/home/${arguments.host.users.superuser.username}";
	};
}
