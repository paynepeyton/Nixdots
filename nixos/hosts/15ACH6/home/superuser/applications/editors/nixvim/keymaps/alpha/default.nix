{
	...
}: {
	programs = {
		nixvim = {
			keymaps = [
				{
					key = "<leader>d";
					action = ":Alpha<CR>";
					options = {
						noremap = true;
						nowait = true;
						silent = true;
					};
				}
			];
		};
	};
}
