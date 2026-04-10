{ ... }:
{
  flake.homeModules.toolchain =
    { pkgs, ... }:
    {
      # Language Compilers / Toolchains
      home.packages = with pkgs; [
        php
        uv
        bun
        nodejs
        rustup
        clang
        python315FreeThreading
        jdk25
        maven
      ];
    };
}
