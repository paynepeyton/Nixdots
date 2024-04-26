{
	...
}: {
	programs = {
		gamemode = {
			enable = true;
			settings = {
				general = {
					desiredgov = "performance";
				};
				gpu = {
					apply_gpu_optimisations = "accept-responsibility";
					gpu_device = 0;
					nv_powermizer_mode = 1;
				};
			};
		};
	};
}
