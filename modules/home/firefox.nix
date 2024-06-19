{ config, pkgs, inputs, ... }:
{
  programs.firefox = {
    enable = true;
    profiles.yurii = {
      extensions = with inputs.firefox-addons.packages."x86_64-linux"; [
        proton-pass
	ublock-origin
	sponsorblock
	darkreader
	tridactyl
	youtube-shorts-block
      ];
    };
  };
}
