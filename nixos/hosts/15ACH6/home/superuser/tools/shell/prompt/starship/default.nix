{
	lib,
	...
}: {
	programs = {
		starship = {
			enable = true;
			enableTransience = true;
			settings = {
				add_newline = false;
				format = lib.concatStrings [
					"$directory"
					"$git_branch"
					"$git_status"
					"$line_break"
					"$character"
				];
				directory = {
					format = "[$read_only](fg:#BF616A)[$path ](fg:bold #81A1C1)";
					read_only = "󱅞 ";
				};
				git_branch = {
					format = "[on ](fg:bold #4C566A)[$symbol ](fg:#D8DEE9)[$branch  ](fg:bold #81A1C1)";
					symbol = "󰊤 ";
				};
				git_status = {
					format = "[$all_status$ahead_behind]($style)";
					conflicted = "[󰩋 ($count )](bold fg:#BF616A)";
					ahead = "[󰀽 ($count )](fg:bold #EBCB8B)";
					behind = "[󰀿 ($count )](fg:bold #EBCB8B)";
					diverged = "[󰋭 ](fg:#BF616A)";
					up_to_date = "[󰈖 ](fg:#A3BE8C)";
					untracked = "[󰡯 ($count )](fg:bold #EBCB8B)";
					stashed = "[󰀼 ($count )](fg:bold #81A1C1)";
					modified = "[󱇧 ($count )](fg:bold #EBCB8B)";
					staged = "[󰝒 ($count )](fg:bold #A3BE8C)";
					renamed = "[󱁹 ($count )](fg:bold #EBCB8B)";
					deleted = "[󰮘 ($count )](fg:bold #BF616A";
					typechanged = "[󱁻 ](fg:bold #EBCB8B)";
				};
				character = {
					format = "[$symbol]($style)";
					success_symbol = "[❯ ](fg:#A3BE8C)";
					error_symbol = "[❯ ](fg:#BF616A)";
				};
			};
		};
	};
}
