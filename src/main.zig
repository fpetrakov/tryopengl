const glfw = @import("zglfw");
const gl = @import("zgl");

pub fn main() !void {
    try glfw.init();
    defer glfw.terminate();

    const window = try glfw.createWindow(600, 600, "zig-gamedev: minimal_glfw_gl", null, null);
    defer glfw.destroyWindow(window);

    // or, using the equivalent, encapsulated, "objecty" API:
    // const window = try glfw.Window.create(600, 600, "zig-gamedev: minimal_glfw_gl", null, null);
    // defer window.destroy();

    // setup your graphics context here

    while (!window.shouldClose()) {
        glfw.pollEvents();

        // render your things here

        window.swapBuffers();
    }
}
