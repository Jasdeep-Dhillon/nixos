{ ... }:
{
  flake.nixosModules.dev =
    { pkgs, ... }:
    {
      programs.git = {
        enable = true;
        lfs.enable = true;
        package = pkgs.gitFull;
        config = {
          init = {
            defaultBranch = "main";
          };
        };
      };
    };

  flake.homeModules.vcs =
    { pkgs, ... }:
    let
      name = "Jasdeep";
      email = "jsdhillon286@gmail.com";
    in
    {
      home.packages = [ pkgs.gh ];
      programs.git = {
        enable = true;
        settings = {
          user = {
            inherit email;
            inherit name;
          };
          lfs.enable = true;
          push = {
            default = "current";
            autoSetupRemote = true;
          };
          color.ui = true;
          core = {
            editor = "hx";
            autocrlf = false;
            filemode = false;
            preloadindex = true;
            fscache = true;
            longpaths = true;
          };
          gui.editor = "zeditor";
          pull.rebase = true;
          merge.conflictstyle = "zdiff3";
          rebase = {
            autosquash = true;
            autostash = true;
          };
          commit.verbose = true;
          commit.cleanup = "scissors";
          rerere.enabled = true;
          diff = {
            algorithm = "histogram";
            colorMoved = "default";
          };
          fetch.prune = true;
          safe.directory = "/media/Storage/Projects/*";
          url = {
            "git@github.com:".insteadOf = "gh:";
            "gh:".insteadOf = "https://github.com/";
          };
          filter = {
            "lfs" = {
              clean = "git-lfs clean -- %f";
              smudge = "git-lfs smudge -- %f";
              process = "git-lfs filter-process";
              required = true;
            };
          };
        };
      };
      programs.jujutsu = {
        enable = true;
        settings = {
          user = {
            inherit email;
            inherit name;
          };
          ui = {
            default-command = "log";
          };
        };
      };
    };
}
