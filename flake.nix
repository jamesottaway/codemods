{
  description = "The monolithic backend API for Hireup";

  inputs = {
    nixpkgs.url = github:NixOS/nixpkgs/nixpkgs-unstable;
    flake-utils.url = github:numtide/flake-utils;
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.simpleFlake {
      inherit self nixpkgs;
      name = "core";
      shell = ./shell.nix;
      systems = [ "x86_64-darwin" "x86_64-linux" ];
    };
}
