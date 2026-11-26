{ 
    inputs,
    ... 
}: {
    flake.nixosModules.hyprland = { pkgs, ... }: 
    let
        hyprlandPkg = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.hyprland;
        #caelestiaPkg = inputs.caelestia-shell.packages.${pkgs.stdenv.hostPlatform.system}.with-cli;
        noctaliaPkg = inputs.noctalia-shell.packages.${pkgs.stdenv.hostPlatform.system}.default;
    in
    {
          environment.systemPackages = with pkgs; [
    	    hyprlandPkg
    	    #caelestiaPkg
	    noctaliaPkg
	    foot
	    hyprlauncher
	    kdePackages.dolphin
	    rofi
	    waybar
	    hyprpolkitagent
	    hyprpaper
	    xdg-desktop-portal-gtk
	    wl-clipboard

	    firefox
          ];	

	  programs.hyprland = {
	    enable = true;
	    withUWSM = true;
	    xwayland.enable = true;
	  };
	
    };
}
