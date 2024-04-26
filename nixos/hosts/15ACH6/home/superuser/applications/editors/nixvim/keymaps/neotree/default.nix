{
	...
}: {
	programs = {
		nixvim = {
			keymaps = [
				{
					key = "<leader>e";
					action = ":Neotree<CR>";
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
