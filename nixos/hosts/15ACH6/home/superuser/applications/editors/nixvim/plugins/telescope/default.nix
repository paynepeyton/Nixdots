{
	pkgs,
	...
}: {
	programs = {
		nixvim = {
			plugins = {
				telescope = {
					enable = true;
					keymaps = {
						"<leader>fd" = {
							action = "lsp_definitions";
						};
						"<leader>ft" = {
							action = "lsp_type_definitions";
						};
					};
					keymapsSilent = true;
				};
			};
			extraPackages = with pkgs; [
				ripgrep
				fd
			];
		};
	};
}
