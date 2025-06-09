{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    tgirlpkgs.url = "github:tgirlcloud/pkgs";
  };

  outputs =
    {
      self,
      nixpkgs,
      tgirlpkgs,
    }:
    let
      forAllSystems =
        function:
        nixpkgs.lib.genAttrs nixpkgs.lib.systems.flakeExposed (
          system: function nixpkgs.legacyPackages.${system}
        );
    in
    {
      devShells = forAllSystems (pkgs: {
        default = pkgs.mkShellNoCC {
          packages = [
            tgirlpkgs.packages.${pkgs.stdenv.hostPlatform.system}.ringfairy
            pkgs.simple-http-server
          ];
        };
      });
    };

  nixConfig = {
    extra-substituters = [ "https://cache.tgirl.cloud/tgirlcloud" ];
    extra-trusted-public-keys = [ "tgirlcloud:vcV9oxS9pLXyeu1dVnBabLalLlw0yJzu6PakQM372t0=" ];
  };
}
