{
	pkgs,
	...
}:
	pkgs.stdenv.mkDerivation {
		name = "sugarcandy-sddm-theme";
		src = pkgs.fetchFromGitHub {
			owner = "Kangie";
			repo = "sddm-sugar-candy";
			rev = "a1fae5159c8f7e44f0d8de124b14bae583edb5b8";
			sha256 = "18wsl2p9zdq2jdmvxl4r56lir530n73z9skgd7dssgq18lipnrx7";
		};
		dontBuild = true;
		installPhase = let
			background = pkgs.fetchurl {
				url = "https://raw.githubusercontent.com/paynepeyton/Nixdots/main/assets/images/background/default.png";
				sha256 = "0qa1sbk6apynz608ghhq26vvwl9l239lbg8yw3fs50syaldy7w3q";
			};
			configurations = builtins.toFile "theme.conf" ''
				[General]
				Background="Backgrounds/default.png"
				DimBackgroundImage="0.0"
				ScaleImageCropped="true"
				ScreenWidth="1920"
				ScreenHeight="1080"
				FullBlur="true"
				PartialBlur="false"
				BlurRadius="30"
				HaveFormBackground="false"
				FormPosition="center"
				BackgroundImageHAlignment="center"
				BackgroundImageVAlignment="center"
				MainColor="#81A1C1"
				AccentColor="#D8DEE9"
				BackgroundColor="#2E3440"
				OverrideLoginButtonTextColor=""
				InterfaceShadowSize="6"
				InterfaceShadowOpacity="0.6"
				RoundCorners="5"
				ScreenPadding="0"
				Font="FantasqueSansM Nerd Font"
				FontSize=""
				ForceRightToLeft="false"
				ForceLastUser="false"
				ForcePasswordFocus="false"
				ForceHideCompletePassword="true"
				ForceHideVirtualKeyboardButton="false"
				ForceHideSystemButtons="false"
				AllowEmptyPassword="false"
				AllowBadUsernames="false"
				Locale=""
				HourFormat="HH:mm"
				DateFormat="dddd, d MMMM"
				HeaderText=""
			'';
		in ''
			mkdir -p $out/{Assets,Backgrounds,Components}
			cp $src/Assets/* $out/Assets
			cp ${background} $out/Backgrounds/default.png
			cp $src/Components/* $out/Components
			cp $src/Main.qml $out/Main.qml
			cp ${configurations} $out/theme.conf	
		'';
	}
