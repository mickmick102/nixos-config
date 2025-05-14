{
  # Configure console keymap
  console.keyMap = "cf";

  services.xserver = {
    xkb.layout = "cf";
    xkb.variant = "qwerty";
    #xkbOptions = "grp:win_space_toggle";
  };
}