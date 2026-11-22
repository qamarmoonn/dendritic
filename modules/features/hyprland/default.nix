{ 
    inputs,
    ... 
}: {
    flake.nixosModules.hyprland = { pkgs, ... }: 
    let
        hyprlandPkg = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.hyprland;
        caelestiaPkg = inputs.caelestia-shell.packages.${pkgs.stdenv.hostPlatform.system}.with-cli;
    in
    {
          environment.systemPackages = with pkgs; [
    	    hyprlandPkg
    	    caelestiaPkg
	    foot
	    hyprlauncher
	    kdePackages.dolphin
	    rofi
	    waybar
	    hyprpolkitagent
	    hyprpaper
	    xdg-desktop-portal-gtk
	    wl-clipboard
	    xwayland

	    firefox
          ];	

	  programs.hyprland.enable = true;
	
    };
}
