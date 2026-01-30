{
  description = "Home Manager configuration";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.11";
    home-manager = {
      url = "github:nix-community/home-manager/release-25.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };
  outputs =
    { nixpkgs, home-manager, ... }:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};

      mkHomeConfig =
        activeTheme:
        home-manager.lib.homeManagerConfiguration {
          inherit pkgs;
          modules = [ ./home.nix ];
          extraSpecialArgs = { inherit activeTheme; };
        };
    in
    {
      homeConfigurations = {
        "saltcal" = mkHomeConfig "catppuccin-mocha";

        "latte" = mkHomeConfig "catppuccin-latte";
        "cherry" = mkHomeConfig "cherry-blossom";
        "gruvbox" = mkHomeConfig "gruvbox-dark";
        "mocha" = mkHomeConfig "catppuccin-mocha";
        "frutiger" = mkHomeConfig "frutiger-aero";
        "nord" = mkHomeConfig "nord";
      };
    };
}
