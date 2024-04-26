{
	...
}: {
	imports = [
		./profiles/superuser
	];

	programs = {
		firefox = {
			enable = true;
			policies = {
				"Extensions" = {
					"Locked" = [
						"uBlock0@raymondhill.net"
					];
				};
				"ExtensionSettings" = {
					"uBlock0@raymondhill.net" = {
						"install_url" = "https://addons.mozilla.org/firefox/downloads/latest/ublock-origin/latest.xpi";
						"installation_mode" = "force_installed";
					};
				};
			};
		};
	};
}
