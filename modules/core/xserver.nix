{ pkgs, username, ... }: 
{
  services.displayManager.autoLogin = {
      enable = true;
      user = "${username}";
    };

  libinput = {
      enable = true;
      # mouse = {
      #   accelProfile = "flat";
      # };
    };
  services.xserver = {
    enable = true;
    xkb.layout = "us";
  };

  # To prevent getting stuck at shutdown
  systemd.extraConfig = "DefaultTimeoutStopSec=10s";
}
