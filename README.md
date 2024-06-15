# Hot-reload Test

A very simple test repo for hot-reloading a shared library in Zig.

## Testing

1. Build the project (`zig build`)
2. Run the executable (`./zig-out/bin/hotreload-test`)
3. Observe output
4. Modify `lib/root.zig`
5. Rebuild the project (`zig build`)
6. Observe changed output

## References

- https://ziglang.org/documentation/master/std/#std.DynLib
- https://zig.news/perky/hot-reloading-with-raylib-4bf9
