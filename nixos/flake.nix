{
	inputs = {
		nixpkgs = {
			url = "github:NixOS/nixpkgs/nixos-unstable";
		};
		nixFlatpak = {
			url = "github:gmodena/nix-flatpak";
		};
		hyprland = {
			url = "github:hyprwm/Hyprland";
			inputs = {
				nixpkgs = {
					follows = "nixpkgs";
				};
			};
		};
		hyprpaper = {
			url = "github:hyprwm/hyprpaper";
			inputs = {
				nixpkgs = {
					follows = "nixpkgs";
				};
			};
		};
		hyprlock = {
			url = "github:hyprwm/hyprlock";
			inputs = {
				nixpkgs = {
					follows = "nixpkgs";
				};
			};
		};
		hypridle = {
			url = "github:hyprwm/hypridle";
			inputs = {
				nixpkgs = {
					follows = "nixpkgs";
				};
			};
		};
		nixvim = {
			url = "github:nix-community/nixvim";
			inputs = {
				nixpkgs = {
					follows = "nixpkgs";
				};
			};
		};	
		homeManager = {
			url = "github:nix-community/home-manager";
			inputs = {
				nixpkgs = {
					follows = "nixpkgs";
				};
			};
		};
	};

	outputs = {
		... 
	}@inputs: {
		nixosConfigurations = {
			"15ACH6" = (
				import ./hosts/15ACH6 {
					inherit inputs;
				}
			);
		};
	};	
}
