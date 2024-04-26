{
	pkgs,
	...
}: {
	console = {
		font = "${pkgs.terminus_font}/share/consolefonts/ter-v14b.psf.gz";
		packages = with pkgs ; [
			terminus_font
		];
	};
}
