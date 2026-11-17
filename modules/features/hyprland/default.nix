{ 
    pkgs,
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
          ];	

	  programs.hyprland.enable = true;
    };
}
