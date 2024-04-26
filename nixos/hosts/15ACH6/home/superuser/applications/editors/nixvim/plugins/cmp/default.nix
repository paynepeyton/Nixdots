{
	...
}: {
	programs = {
		nixvim = {
			plugins = {
				cmp = {
					enable = true;
					settings = {
						sources = [
							{
								name = "nvim_lsp";
							}
							{
								name = "luasnip";
							}
							{
								name = "path";
							}
							{
								name = "buffer";
							}
						];
						snippet = {
							expand = ''
								function(args)
									require("luasnip").lsp_expand(args.body)
								end
							'';
						};
						formatting = {
							fields = [
								"kind"
								"abbr"
								"menu"
							];
						};
						window = {
							completion = {
								border = "rounded";
								winhighlight = "Normal:CmpCompletion,FloatBorder:CmpBorder,CursorLine:CmpCursorline,Search:none";
							};
							documentation = {
								border = "rounded";
								winhighlight = "Normal:CmpDocumentation,FloatBorder:CmpBorder";
							};
						};
						mapping = {
							"<C-Left>" = "cmp.mapping.select_prev_item()";
							"<C-Right>" = "cmp.mapping.select_next_item()";
							"<C-Up>" = "cmp.mapping.scroll_docs(-4)";
							"<C-Down>" = "cmp.mapping.scroll_docs(4)";
							"<C-h>" = "cmp.mapping.close()";
							"<CR>" = "cmp.mapping.confirm({ select = true })";
						};
					};
				};
			};
		};
	};
}
