{ pkgs, ... }: {
  # Which nixpkgs channel to use.
  channel = "stable-24.05";
  # Use https://search.nixos.org/packages to find packages
  packages = [
    pkgs.nodejs_20
    pkgs.nodePackages.pnpm
  ];
  # Sets environment variables in the workspace
  env = {};
  idx = {
    # Search for the extensions you want on https://open-vsx.org/ and use "publisher.id"
    extensions = [
      # "vscodevim.vim"
    ];
    workspace = {
      # Runs when a workspace is first created with this `dev.nix` file
      onCreate = {
        pnpm-install = "pnpm install";
        default.openFiles = [ "README.md" ];
      };
      # To run something each time the workspace is (re)started, use the `onStart` hook
    };
    # Enable previews and customize configuration
    # previews = {
    #   enable = true;
    #   previews = {
    #     web = {
    #       command = ["npm" "run" "dev" "--" "--port" "$PORT" "--hostname" "0.0.0.0"];
    #       manager = "web";
    #     };
    #   };
    # };
  };
}