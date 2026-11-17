{ 
    inputs,
    ... 
}:

let
    hyprlandPkg = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.hyprland;
    caelestiaPkg = inputs.caelestia-shell.packages.${pkgs.stdenv.hostPlatform.system}.with-cli;
in
{
    flake.nixosModules.hyprland = { ... }: {
	pkgs = with pkgs [
	    hyprlandPkg
	    caelestiaPkg
	];	

    }
}
