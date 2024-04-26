{
	...
}: {
	programs = {
		nixvim  ={
			plugins = {
				alpha = {
					enable = true;
					layout = [
						{
							type = "padding";
							val = 20;
						}
						{
							type = "text";
							val = [
								"███╗   ██╗██╗██╗  ██╗██╗   ██╗██╗███╗   ███╗"
								"████╗  ██║██║╚██╗██╔╝██║   ██║██║████╗ ████║"
								"██╔██╗ ██║██║ ╚███╔╝ ██║   ██║██║██╔████╔██║"
								"██║╚██╗██║██║ ██╔██╗ ╚██╗ ██╔╝██║██║╚██╔╝██║"
								"██║ ╚████║██║██╔╝ ██╗ ╚████╔╝ ██║██║ ╚═╝ ██║"
								"╚═╝  ╚═══╝╚═╝╚═╝  ╚═╝  ╚═══╝  ╚═╝╚═╝     ╚═╝"
							];
							opts = {
								position = "center";
								hl = "AlphaHeader";
							};
						}
						{
							type = "padding";
							val = 5;
						}
						{
							type = "group";
							val = [
								{
									type = "button";
									on_press = {
										__raw = "function() vim.cmd[[ene]] end";
									};
									val = "󰝒  New File";
									opts = {
										position = "center";
										width = 44;
										hl = "AlphaButton";
										shortcut = "n";
										align_shortcut = "right";
										hl_shortcut = "AlphaButtonShortcut";
										keymap = [
											"n"
											"n"
											":ene<CR>"
											{
												noremap = true;
												nowait = true;
												silent = true;
											}
										];
									};
								}
								{
									type = "button";
									on_press = {
										__raw = "function() require('telescope.builtin').oldfiles() end";
									};
									val = "󱈖  Recent Files";
									opts = {
										position = "center";
										width = 44;
										hl = "AlphaButton";
										shortcut = "r";
										align_shortcut = "right";
										hl_shortcut = "AlphaButtonShortcut";
										keymap = [
											"n"
											"r"
											":Telescope oldfiles<CR>"
											{
												noremap = true;
												nowait = true;
												silent = true;
											}
										];
									};
								}
								{
									type = "button";
									on_press = {
										__raw = "function() require('telescope.builtin').find_files() end";
									};
									val = "󰱼  Find File";
									opts = {
										position = "center";
										width = 44;
										hl = "AlphaButton";
										shortcut = "f";
										align_shortcut = "right";
										hl_shortcut = "AlphaButtonShortcut";
										keymap = [
											"n"
											"f"
											":Telescope find_files<CR>"
											{
												noremap = true;
												nowait = true;
												silent = true;
											}
										];
									};
								}
								{
									type = "button";
									on_press = {
										__raw = "function() require('telescope.builtin').live_grep() end";
									};
									val = "󱎸  Find Text";
									opts = {
										position = "center";
										width = 44;
										hl = "AlphaButton";
										shortcut = "g";
										align_shortcut = "right";
										hl_shortcut = "AlphaButtonShortcut";
										keymap = [
											"n"
											"g"
											":Telescope live_grep<CR>"
											{
												noremap = true;
												nowait = true;
												silent = true;
											}
										];
									};
								}
								{
									type = "button";
									on_press = {
										__raw = "function() vim.cmd[[qa]] end";
									};
									val = "󰗼  Quit";
									opts = {
										position = "center";
										width = 44;
										hl = "AlphaButton";
										shortcut = "q";
										align_shortcut = "right";
										hl_shortcut = "AlphaButtonShortcut";
										keymap = [
											"n"
											"q"
											":qa<CR>"
											{
												noremap = true;
												nowait = true;
												silent = true;
											}
										];
									};
								}
							];
							opts = {
								spacing = 1;
							};
						}
					];
				};
			};
		};
	};
}
