update_dependencies:
    git submodule update --recursive --remote && cargo clean && cargo update && cargo build
update_submodules:
    git submodule update --recursive --remote
test_publish:
    cd libpd && git stash && cd .. && git submodule update --init --recursive --remote && cargo publish --dry-run 
publish:
    cd libpd && git stash && cd .. && git submodule update --init --recursive --remote && cargo publish