{
  description = "My system configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.11";

    home-manager = {
      url = "github:nix-community/home-manager/release-24.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    stylix = {
      url = "github:danth/stylix/release-24.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, stylix, home-manager, ... }@inputs: let
    system = "x86_64-linux";
    homeStateVersion = "24.11";
    stateVersion = "24.11";
    user = "michael";
    hostname = "rivendell";
  in {
    nixosConfigurations.${hostname} = nixpkgs.lib.nixosSystem {
      system = system;
      specialArgs = {
        inherit inputs user hostname system homeStateVersion stateVersion;
      };
      modules = [
        ./hosts/${hostname}/configuration.nix
	      stylix.nixosModules.stylix
      ];
    };

    # homeConfigurations.michael = home-manager.lib.homeManagerConfiguration {
    #   pkgs = nixpkgs.legacyPackages.x86_64-linux;
    #   extraSpecialArgs = {
    #     inherit inputs homeStateVersion user;
    #   };

    #   modules = [
    #     ./home-manager/home.nix
    #   ];
    # };
  };
}
