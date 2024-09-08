#!/usr/bin/env bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs  | sh
. "$HOME/.cargo/env"
mkdir codecycle/
cd codecycle/
cargo init --bin myjs
cd myjs
cargo run
cargo add deno_core@0.272.0
cargo add tokio@1.19.2 --features=full
cat Cargo.toml
cd src/
code main.rs


