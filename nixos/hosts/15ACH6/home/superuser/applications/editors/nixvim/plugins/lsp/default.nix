{
	...
}: {
	programs = {
		nixvim = {
			plugins = {
				lsp = {
					enable = true;
					servers = {
						nil_ls = {
							enable = true;
							autostart = true;
						};
						rust-analyzer = {
							enable = true;
							autostart = true;
							installRustc = true;
							installCargo = true;
						};
						ccls = {
							enable = true;
							autostart = true;
						};
						lua-ls = {
							enable = true;
							autostart = true;
						};
						tsserver = {
							enable = true;
							autostart = true;
						};
						cssls = {
							enable = true;
							autostart = true;
						};
					};
				};
				lsp-lines = {
					enable = true;
				};
				lspkind = {
					enable = true;
					mode = "symbol";
					cmp = {
						enable = true;
					};
				};
			};
		};
	};
}
