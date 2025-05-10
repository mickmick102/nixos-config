{ homeStateVersion, user, ... }: {
  imports = [
    ./modules/default.nix
    ./home-packages.nix
  ];

  home = {
    username = user;
    homeDirectory = "/home/${user}";
    stateVersion = homeStateVersion;
  };
}
