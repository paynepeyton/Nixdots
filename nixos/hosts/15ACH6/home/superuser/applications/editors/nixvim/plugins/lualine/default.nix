{
	...
}: {
	programs = {
		nixvim = {
			plugins = {
				lualine = {
					enable = true;
					disabledFiletypes = {
						winbar = [
							"neo-tree"
							"alpha"
						];
						statusline = [
							"neo-tree"
							"alpha"
						];
					};
					refresh = {
						winbar = 100;
						statusline = 100;
					};
					componentSeparators = {
						left = "╱";
						right = "╱";
					};
					sectionSeparators = {
						left = "";
						right = "";
					};
					sections = {
						lualine_a = [
							{
								name = "mode";
								color = {
									bg = "#1E222A";
									fg = "#81A1C1";
									gui = "bold";
								};
								separator = {
									left = "";
									right = "";
								};
							}
						];
						lualine_b = [
							{
								name = "";
							}
						];
						lualine_c = [
							{
								name = "";
							}
						];
						lualine_x = [
							{
								name = "diagnostics";
								color = {
									bg = "#4C566A";
									gui = "bold";
								};
								separator = {
									left = "";
									right = "";
								};
							}
						];
						lualine_y = [
							{
								name = "progress";
								color = {
									bg = "#434C5E";
									fg = "#81A1C1";
									gui = "bold";
								};
								separator = {
									left = "";
									right = "";
								};
							}
						];
						lualine_z = [
							{
								name = "location";
								color = {
									bg = "#1E222A";
									fg = "#81A1C1";
									gui = "bold";
								};
								separator = {
									left = "";
									right = "";
								};
							}
						];
					};
					inactiveSections = {
						lualine_a = [
							{
								name = "";
							}
						];
						lualine_b = [
							{
								name = "";
							}
						];
						lualine_c = [
							{
								name = "";
							}
						];
						lualine_x = [
							{
								name = "";
							}
						];
						lualine_y = [
							{
								name = "";
							}
						];
						lualine_z = [
							{
								name = "";
							}
						];
					};
					winbar = {
						lualine_a = [
							{
								name = "buffers";
								color = {
									gui = "bold";
								};
								extraConfig = {
									buffers_color = {
										active = {
											bg = "#1E222A";
											fg = "#81A1C1";
											gui = "bold";
										};
										inactive = {
											bg = "#4C566A";
											fg = "#3B4252";
											gui = "bold";
										};
									};
									symbols = {
										modified = " ";
										alternate_file = "";
									};
								};
								separator = {
									left = "";
									right = "";
								};
							}
						];
					};
					inactiveWinbar = {
						lualine_a = [
							{
								name = "buffers";
								color = {
									gui = "bold";
								};
								extraConfig = {
									buffers_color = {
										active = {
											bg = "#1E222A";
											fg = "#81A1C1";
											gui = "bold";
										};
										inactive = {
											bg = "#4C566A";
											fg = "#3B4252";
											gui = "bold";
										};
									};
									symbols = {
										modified = " ";
										alternate_file = "";
									};
								};
								separator = {
									left = "";
									right = "";
								};
							}
						];
					};
				};
			};
		};
	};
}
