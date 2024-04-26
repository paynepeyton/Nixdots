{
	config,
	...
}: {
	hardware = {
		nvidia = {
			package = config.boot.kernelPackages.nvidiaPackages.stable;
			open = false;
			modesetting = {
				enable = true;
			};
			powerManagement = {
				enable = true;
			};
			nvidiaSettings = false;
			prime = {
				sync = {
					enable = true;
				};
				amdgpuBusId = "PCI:5:0:0";
				nvidiaBusId = "PCI:1:0:0";
			};
		};
	};

	hardware = {
		opengl = {
			enable = true;
			driSupport = true;
			driSupport32Bit = true;
		};
	};

	services = {
		xserver = {
			videoDrivers = [
				"nvidia"
			];
		};
	};
}
