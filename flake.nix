{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    flake-parts.url = "github:hercules-ci/flake-parts";
    import-tree.url = "github:vic/import-tree";
  };

  # import modules/ automatically
  outputs = inputs:
    inputs.flake-parts.lib.mkFlake {inherit inputs;} 
    (inputs.import-tree ./modules);
}
