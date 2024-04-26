{
	arguments,
	...
}: {
	imports = [
		./nix
		./documentation/nixos
		./infrastructure/hardware
		./infrastructure/swap
		./infrastructure/drivers/nvidia
		./infrastructure/boot
		./infrastructure/locale
		./infrastructure/timezone
		./infrastructure/network
		./infrastructure/console
		./accounts/groups/superuser
		./accounts/users/superuser
		./tools/shell/fish
		./tools/privilege/sudo
		./tools/privilege/doas
		./tools/optimisation/gamemode
		./tools/fonts
		./tools/desktop/dconf
		./tools/desktop/xdg
		./applications/editors/nano
		./applications/editors/vim
		./applications/virtualisation/virtManager
		./applications/utilities/nix
		./services/privilege/polkit
		./services/optimisation/autocpufreq
		./services/communication/pipewire
		./services/communication/bluetooth
		./services/graphical/xserver
		./environment/displayManager/sddm
		./environment/windowManager/hyprland
	];

	system = {
		stateVersion = arguments.system.stateVersion;
	};
}
