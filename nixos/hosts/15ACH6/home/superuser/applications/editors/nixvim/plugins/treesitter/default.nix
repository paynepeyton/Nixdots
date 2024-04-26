{
	...
}: {
	programs = {
		nixvim = {
			plugins = {
				treesitter = {
					enable = true;
					indent = true;
				};
				treesitter-refactor = {
					enable = true;
					highlightDefinitions = {
						enable = true;
					};
					navigation = {
						enable = true;
						keymaps = {
							gotoDefinition = "<leader>td";
						};
					};
					smartRename = {
						enable = true;
						keymaps = {
							smartRename = "<leader>tr";
						};
					};
				};
			};
		};
	};
}
