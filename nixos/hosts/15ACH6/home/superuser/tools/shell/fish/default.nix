{
	pkgs,
	...
}: {
	programs = {
		fish = {
			enable = true;
			shellInit = ''
				set fish_greeting
			'';
			shellAliases = {
				lsd = "lsd --tree --depth 1";
			};
			functions = {
				fish_command_not_found = {
					onEvent = "fish_command_not_found";
					body = ''
						echo -n "The command "
						set_color red
						echo -n $argv[1]
						set_color normal
						echo " could not be found"
					'';
  				};
			};
			plugins = [
				{
					name = "done";
					src = pkgs.fetchFromGitHub {
						owner = "franciscolourenco";
						repo = "done";
						rev = "eb32ade85c0f2c68cbfcff3036756bbf27a4f366";
						sha256 = "12l7m08bp8vfhl8dmi0bfpvx86i344zbg03v2bc7wfhm20li3hhc";
					};
				}
				{
					name = "autopair";
					src = pkgs.fetchFromGitHub {
						owner = "jorgebucaran";
						repo = "autopair.fish";
						rev = "4d1752ff5b39819ab58d7337c69220342e9de0e2";
						sha256 = "0l2g922gwjd64ar41j7cp09vvvrs30ha55b85nidni4i4bbfvpda";
					};
				}
			];
		};
	};
}
