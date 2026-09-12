{
  inputs = {
    nixpkgs.follows = "extersia/nixpkgs";
    extersia.url = "github:extersia-org/pkgs";
  };

  outputs =
    {
      self,
      nixpkgs,
      extersia,
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
            extersia.packages.${pkgs.stdenv.hostPlatform.system}.ringfairy
            pkgs.simple-http-server
          ];
        };
      });
    };

  nixConfig = {
    extra-substituters = [ "https://extersia.cachix.org" ];
    extra-trusted-public-keys = [
      "extersia.cachix.org-1:ZHy9765xrhn4lDKGTzWWykHC+B091oTqNxClgc78MQU="
    ];
  };
}
