export fn hello() callconv(.C) [*:0]const u8 {
    return "Hello, world!\n";
}

const std = @import("std");
