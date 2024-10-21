run:
    nix run .

# cachix-push:
#     nix build --json | jq -r '.[].outputs | to_entries[].value' | cachix push topher097

bundle:
    nix bundle --bundler github:DavHau/nix-portable -o bundle

lockfile-pin:
    git add flake.lock
    git commit -m "pin: update flake.lock"
    git push

set-remote:
    git remote set-url origin git@github.com:topher097/tophpkgs.git

gadd:
    git add .