const std = @import("std");

pub fn main() !void {
    var i: usize = 2;
    while (true) {
        var isPrime: bool = true;
        for (2..i) |j| {
            if (i % j == 0) {
                isPrime = false;
                break;
            }
        }
        if (isPrime) {
            std.debug.print("{}\n", .{i});
        }
        i = i + 1;
    }
}
