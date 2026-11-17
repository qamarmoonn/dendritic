{ self, inputs, ... }: {
  flake.nixosConfigurations.mainPC = inputs.nixpkgs.lib.nixosSystem {
    modules = with self.nixosModules; [
      core
      hyprland
    ];
  };
}

