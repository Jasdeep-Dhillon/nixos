alias s:= switch-legion
alias t:= test-legion
alias u:= update-all
alias sh:= switch-home

# Update all flake inputs
update-all:
    nix flake update --commit-lock-file

# Update specificied input
update INPUT:
    nix flake update {{INPUT}}

# Check flake configuration
check:
    nix flake check

# Check flake with show-trace
trace-check:
    nix flake check --show-trace

# Switch legion generation
switch-legion:
    sudo nixos-rebuild switch --flake .#legion

# Switch legion generation with show-trace
trace-switch-legion:
    sudo nixos-rebuild switch --flake .#legion --show-trace

# Switch home manager generation
switch-home:
    home-manager switch  --flake .

# Switch home manager generation with show-trace
trace-switch-home:
    home-manager switch  --flake .

# Test legion configuration
test-legion:
    nixos-rebuild test --flake .#legion

# Clear unused packages from nix store
clean:
    nix-collect-garbage -d
