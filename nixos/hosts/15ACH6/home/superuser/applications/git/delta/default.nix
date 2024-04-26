{
	...
}: {
	programs = {
		git = {
			delta = {
				enable = true;
				options = {	
					file-decoration-style = "none";
					file-style = "omit";
					hunk-header-decoration-style = "#81A1C1 box ul";
					hunk-header-style = "file line-number syntax";
					hunk-header-file-style = "bold #81A1C1";
					hunk-header-line-number-style = "bold #81A1C1";
					line-numbers = true;
					line-numbers-left-format = "{nm:>1} │";
					line-numbers-left-style = "#BF616A";
					line-numbers-right-format = " {np:>1} │";
					line-numbers-right-style = "#A3BE8C";
					line-numbers-minus-style = "bold #BF616A";
					line-numbers-plus-style = "bold #A3BE8C";
					minus-emph-style = "syntax #BF616A";
					minus-non-emph-style = "syntax auto";
					plus-emph-style = "syntax #A3BE8C";
					plus-non-emph-style = "syntax auto";
					syntax-theme = "Nord";
				};
			};
		};
	};
}
