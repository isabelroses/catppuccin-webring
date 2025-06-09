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
}
