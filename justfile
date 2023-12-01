# @mason: flutter_rust_bridge

# When 'just' is called with no arguments,
# these recipes are run by default.

default: check lint

# Add new recipes to these meta-recipes as you add new modules.

lint: lint_native lint_native_2
clean: clean_native clean_native_2
    flutter clean
check: check_native check_native_2
    flutter analyze

alias c := check
alias l := lint


# Recipes for native_2
build:
    cd native && cargo build

lint_native:
    cd native && cargo fmt
    cd native && dart format --line-length 80
clean_native:
    cd native && cargo clean
check_native:
    cd native && cargo check

# Recipes for native_2
build_2:
    cd native_2 && cargo build

lint_native_2:
    cd native_2 && cargo fmt
    cd native_2 && dart format --line-length 80
clean_native_2:
    cd native_2 && cargo clean
check_native_2:
    cd native_2 && cargo check
