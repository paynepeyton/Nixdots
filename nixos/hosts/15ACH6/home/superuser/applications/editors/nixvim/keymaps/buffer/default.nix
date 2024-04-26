{
	...
}: {
	programs = {
		nixvim = {
			keymaps = [
				{
					key = "<leader>bq";
					action = ":bd<CR>";
					options = {
						noremap = true;
						nowait = true;
						silent = true;
					};
				}
				{
					key = "<leader>bp";
					action = ":bprev<CR>";
					options = {
						noremap = true;
						nowait = true;
						silent = true;
					};
				}
				{
					key = "<leader>bn";
					action = ":bnext<CR>";
					options = {
						noremap = true;
						nowait = true;
						silent = true;
					};
				}
				{
					key = "<leader>bw";
					action = ":w<CR>";
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
