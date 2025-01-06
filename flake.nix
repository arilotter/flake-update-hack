{
  description = "test";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/master";
  };

  outputs = inputs @ {
    ...
  }: {};
}
