{...}: {
    flake.nixosModules.user = {...}: {
	users.users.qamar = {
	    isNormalUser = true;
	    initialPassword = "password";
	    extraGroups = [
		"root"
		"wheel"
	    ];

	};
    };
}
