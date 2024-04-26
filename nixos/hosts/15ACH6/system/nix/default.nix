{
	...
}: {
	nix = {
		settings = {
			system-features = [
				"kvm"
			];
			experimental-features = [
				"nix-command"
				"flakes"
			];
			auto-optimise-store = true;
		};
	};

	nixpkgs = {
		config = {
			allowUnfree = true;
			packageOverrides = pkgs: {
				sugarcandy-sddm-theme = pkgs.callPackage ./derivations/sugarcandy-sddm-theme {};
			};
		};
	};
}
