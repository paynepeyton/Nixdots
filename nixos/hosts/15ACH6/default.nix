{
	inputs,
	...
}:
	let
		arguments = {
			system = {
				architecture = "x86_64-linux";
				stateVersion = "";
			};
			host = {
				hostname = "";
				users = {
					superuser = {
						username = "";
						groupname = "";
						git = {
							user = {
								name = "";
								email = "";
							};
						};
					};
				};
			};
		};
	in inputs.nixpkgs.lib.nixosSystem rec {
		system = arguments.system.architecture;
		specialArgs = {
			inherit inputs arguments;
		};
		modules = [
			inputs.hyprland.nixosModules.default
			./system
			inputs.homeManager.nixosModules.home-manager {
				home-manager = {
					useGlobalPkgs = true;
					useUserPackages = true;
					extraSpecialArgs = specialArgs;
					users = {
						${arguments.host.users.superuser.username} = {
							imports = [
								inputs.nixFlatpak.homeManagerModules.nix-flatpak
								inputs.hyprland.homeManagerModules.default
								inputs.hyprpaper.homeManagerModules.hyprpaper
								inputs.hypridle.homeManagerModules.hypridle
								inputs.hyprlock.homeManagerModules.hyprlock
								inputs.nixvim.homeManagerModules.nixvim
								./home/superuser
							];
						};
					};
				};
			}
		];
	}
