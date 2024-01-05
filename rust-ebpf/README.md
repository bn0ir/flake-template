# Rust eBPF flake

## Prepare

```
nix develop
```

## Create new project

```
cargo generate https://github.com/aya-rs/aya-template
```

or

```
cargo generate --name myapp -d program_type=xdp https://github.com/aya-rs/aya-template
```
