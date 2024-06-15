const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const exe = b.addExecutable(.{
        .name = "hotreload-test",
        .root_source_file = b.path("src/main.zig"),
        .target = target,
        .optimize = optimize,
    });

    const lib = b.addSharedLibrary(.{
        .name = "hotreload-test",
        .root_source_file = b.path("lib/root.zig"),
        .target = target,
        .optimize = optimize,
    });

    b.installArtifact(exe);
    b.installArtifact(lib);
}
