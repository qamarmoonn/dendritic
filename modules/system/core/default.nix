{ self, ... }: {
  flake.nixosModules.core = { pkgs, ... }:
    let
      modules = with self.nixosModules; [
        bootloader
        networking
        user
      ];
    in
    {
      imports =
        [
          /etc/nixos/hardware-configuration.nix
        ]
        ++ modules;

      environment.systemPackages = with pkgs; [
        neovim
        git
        wget
        fastfetch
      ];


      nixpkgs.config.allowUnfree = true;


    };
}
