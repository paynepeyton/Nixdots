{
	...
}: {
	imports = [
		./keymaps/globals
		./keymaps/buffer
		./keymaps/neotree
		./keymaps/alpha
		./autoCmd/twilight
		./colorschemes/nord
		./highlights/cursorline
		./highlights/cmp
		./highlights/neotree
		./highlights/alpha
		./plugins/lsp
		./plugins/treesitter
		./plugins/luasnip
		./plugins/cmp
		./plugins/notify
		./plugins/noice
		./plugins/neotree
		./plugins/telescope
		./plugins/lualine
		./plugins/autoclose
		./plugins/colorizer
		./plugins/comment
		./plugins/twilight
		./plugins/alpha
	];

	programs = {
		nixvim = {
			enable = true;
			defaultEditor = true;
			opts = {
				shortmess = "FI";
				updatetime = 100;
				swapfile = false;
				termguicolors = true;
				number = true;
				cursorline = true;
				shiftwidth = 4;
				tabstop = 4;
			};
			clipboard = {
				register = "unnamedplus";
				providers = {
					wl-copy = {
						enable = true;
					};
				};
			};
		};
	};
}
