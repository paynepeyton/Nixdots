{
	...
}: {
	programs = {
		nixvim = {
			plugins = {
				notify = {
					enable = true;
					backgroundColour = "#2E3440";
					fps = 60;
				};
			};
		};
	};
}
