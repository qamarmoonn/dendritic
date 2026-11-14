{ inputs, ... }: {
    perSystem = { pkgs, ... }: {
	packages = {
	    bash = inputs.wrappers.lib.wrapPackage { # base for every wrapper module
		inherit pkgs; 
		package = pkgs.bash;
		flags = {
		    "--rcfile" = ./bashrc;
		};
	    };
	};
    };
}
