{
  description = "test";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/23023f3bcb346a0c1698b00d2995b1fd372585bb";
  };

  outputs = inputs @ {
    ...
  }: {};
}
