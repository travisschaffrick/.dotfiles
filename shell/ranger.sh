function r() {
    local tempfile=$(mktemp)
    ranger --choosedir="$tempfile" "$@"
    if [ -f "$tempfile" ]; then
        local dir=$(cat "$tempfile")
        [ -d "$dir" ] && cd "$dir"
        rm -f "$tempfile"
    fi
}
