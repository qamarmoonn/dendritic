{ inputs, ... }: {
  flake.nixosModules.gaming = { pkgs, ... }:
    let
        lunarclientPkg = inputs.lunar-client.packages.${pkgs.stdenv.hostPlatform.system}.default;
    in
    {
          environment.systemPackages = with pkgs; [
	    discord
	    lunarclientPkg
          ];	

	
    };
}
