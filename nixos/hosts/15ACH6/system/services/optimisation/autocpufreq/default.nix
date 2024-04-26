{
	...
}: {
	services = {
		auto-cpufreq = {
			enable = true;
			settings = {
				battery = {
					governer = "powersave";
				};
				charger = {
					governer = "performance";
				};
			};
		};
	};
}
