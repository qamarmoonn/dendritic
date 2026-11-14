{ ... }: {
  flake.nixosModules.bootloader = { pkgs, ... }: {
    boot = {
      loader = {
        timeout = 2; # don't wanna wait forever
        efi = {
          canTouchEfiVariables = true; # in case need to edit live kernel
        };
        grub = {
          efiSupport = true;
          device = "nodev";
        };
      };
      kernelPackages = pkgs.linuxPackages_latest;
    };
  };

}
