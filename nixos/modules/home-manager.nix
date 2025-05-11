{ inputs, outputs, user, homeStateVersion, ... }: {
  imports = [
    # Import home-manager's NixOS module
    inputs.home-manager.nixosModules.home-manager
  ];

  home-manager = {
    backupFileExtension = "backup";
    extraSpecialArgs = { inherit user homeStateVersion; };
    users = {
      # Import your home-manager configuration
      michael = import ../../home-manager/home.nix;
    };
  };
}
