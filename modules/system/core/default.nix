{ self, ... }: {
  flake.nixosModules.core = { pkgs, ... }:
    let
      modules = with self.nixosModules; [
        bootloader
        networking
        user
	bash
      ];
    in
    {
      imports =
        [
          /etc/nixos/hardware-configuration.nix
        ]
        ++ modules;

      environment.systemPackages = with pkgs; [
        vim
        git
        wget
        fastfetch
      ];




    };
}
