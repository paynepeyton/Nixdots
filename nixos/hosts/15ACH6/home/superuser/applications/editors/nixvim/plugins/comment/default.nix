{
	...
}: {
	programs = {
		nixvim = {
			plugins = {
				comment = {
					enable = true;
					settings = {
						opleader = {
							line = "<leader>cal";
							block = "<leader>cab";
						};
						toggler = {
							line = "<leader>cl";
							block = "<leader>cb";
						};
					};
				};
			};
		};
	};
}
