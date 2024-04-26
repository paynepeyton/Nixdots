{
	pkgs,
	...
}: {
	programs = {
		mpv = {
			enable = true;
			config = {
				osc = false;
				osd-bar = false;
				osd-font = "FantasqueSansM Nerd Font";
				osd-font-size = 20;
				osd-color = "#81A1C1";
				osd-duration = 3000;
				msg-color = true;
				msg-module = true;
				border = false;
				autofit = "80%";
				keep-open = true;
				cursor-autohide = 3000;
				vo = "gpu-next";
				gpu-api = "vulkan";
				hwdec = "auto";
				audio-file-auto = "fuzzy";
				volume-max = 200;
				volume = 100;
				alang = "en";
				demuxer-mkv-subtitle-preroll = true;
				blend-subtitles = true;
				sub-auto = "fuzzy";
				sub-font = "FantasqueSansM Nerd Font";
				sub-font-size = 30;
				sub-color = "#81A1C1";
				slang = "en";
				deband = true;
				deband-iterations = 4;
				deband-threshold = 35;
				deband-range = 16;
				deband-grain = 4;
				dither-depth = "auto";	
				dither = "ordered";
				deinterlace = false;
				scale-antiring = 0.5;
				dscale-antiring = 0.5;
				cscale-antiring = 0.5;
				interpolation = true;
				video-sync = "display-resample";
				tscale = "oversample";
				target-colorspace-hint = true;
				target-contrast = "auto";
				tone-mapping = "bt.2446a";
			};
			defaultProfiles = [
				"high-quality"
			];
			profiles = {
				"protocol.http" = {
					hls-bitrate = "max";
					cache = true;
				};
				"protocol.https" = {
					profile = "protocol.http";
				};
				"protocol.ytdl" = {
					profile = "protocol.http";
				};
			};
			bindings = {
				UP = "add volume 5";
				DOWN = "add volume -5";
				LEFT = "seek -5";
				RIGHT = "seek 5";
			};
			scripts = with pkgs.mpvScripts; [
				modernx-zydezu
				thumbfast
				quack
				mpris
			];
			scriptOpts = {
				modernx = {
					windowcontrols = false;
					compactmode = true;
					showonpause = false;
					showloop = true;
					showontop = false;
					showinfo = false;
					downloadbutton = false;
					fadeduration = 300;
					welcomescreen = false;
				};
			};
		};
	};
}
