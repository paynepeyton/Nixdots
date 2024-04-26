{
	...
}: {
	programs = {
		nixvim = {
			plugins = {
				neo-tree = {
					enable = true;
					enableDiagnostics = false;
					enableGitStatus = false;
					enableModifiedMarkers = true;
					defaultComponentConfigs = {
						icon = {
							default = "";
							folderClosed = "󰉋";
							folderOpen = "󰝰";
							folderEmpty = "󰉖";
							folderEmptyOpen = "󰷏";
							highlight = "NeoTreeFileIcon";
						};
						name = {
							useGitStatusColors = false;
							highlight = "NeoTreeFileName";
						};
						modified = {
							symbol = "";
							highlight = "NeoTreeModified";
						};
					};
				};
			};
		};
	};
}
