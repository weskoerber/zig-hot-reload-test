pub fn main() !void {
    var buf: [128]u8 = undefined;

    while (true) {
        // load shared library
        var lib = try std.DynLib.open("zig-out/lib/libhotreload-test.so");

        // lookup symbol
        const hello = lib.lookup(*const fn () callconv(.C) [*:0]u8, "hello") orelse @panic("symbol not found");

        // call function and print result
        const str = hello();
        std.debug.print("str: {s}", .{str});
        std.debug.print("press any key to continue (ctrl-c to quit)...\n", .{});

        // wait for key press
        const stdin = std.io.getStdIn().reader();
        const recv = try stdin.read(&buf);
        _ = recv;
    }
}

const std = @import("std");
