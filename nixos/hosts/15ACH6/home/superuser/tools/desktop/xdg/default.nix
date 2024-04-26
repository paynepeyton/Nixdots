{
	...
}: {
	xdg = {
		enable = true;
		userDirs = {
			enable = true;
			createDirectories = true;
			desktop = null;
			publicShare = null;
			templates = null;
		};
		mime = {
			enable = true;
		};
		mimeApps = {
			enable = true;
			defaultApplications = {
				"inode/directory" = [
					"ranger.desktop"
				];
			};
		};
		desktopEntries = {
			ranger = {
				name = "Ranger";
				icon = "utilities-terminal";
				type = "Application";
				categories = [
		    		"FileManager"
				];
				mimeType = [
		    		"inode/directory"
				];
				exec = "kitty -e ranger";
			};
		};
	};
}
