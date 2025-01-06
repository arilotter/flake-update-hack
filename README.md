> [10:40 AM]TheComet: We're not locked to 11.3.0, but we know it works with that version. My goal is to start with 11.3.0 and then we can begin updating as we commit to the repo

> [10:41 AM]TheComet: So my initial state is that I need a specific commit of nixpkgs. To me, it makes way more sense to construct a flake.lock file that contains this info because it means I have all of my inputs pinned in one file instead of spread out

> [4:44 PM]apyh: this is not.. good advice, but to do exactly what you want

1. in your flake.nix, first start w/ your specific commit: e.g. nixpkgs.url = "github:NixOS/nixpkgs/23023f3bcb346a0c1698b00d2995b1fd372585bb";
2. run a flake cmd to generate the lockfile, idk, nix flake check.
3. go into flake.lock, find the "original" object, delete the rev: "23023f3bcb346a0c1698b00d2995b1fd372585bb" line and replace with ref: "master" (or whatever branch you want), and go into flake.nix and replace the input with `nixpkgs.url = "github:NixOS/nixpkgs/master";` or whatever other branch you want

> [4:44 PM]apyh: so you'll end up with: you are locked to the commit you wanted, 23023f3bcb346a0c1698b00d2995b1fd372585bb
> [4:44 PM]apyh: and if you ever run nix flake update, it'll update to latest master
