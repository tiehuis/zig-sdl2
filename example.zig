use @import("src/index.zig");

pub fn main() u8 {
    if (SDL_Init(SDL_INIT_VIDEO | SDL_INIT_AUDIO) != 0) {
        SDL_Log(c"failed to initialized SDL\n");
        return 1;
    }
    defer SDL_Quit();

    var renderer: *SDL_Renderer = undefined;
    var window: *SDL_Window = undefined;

    if (SDL_CreateWindowAndRenderer(640, 480, SDL_WINDOW_SHOWN, &window, &renderer) != 0) {
        SDL_Log(c"failed to initialize window and renderer\n");
        return 1;
    }
    defer SDL_DestroyRenderer(renderer);
    defer SDL_DestroyWindow(window);

    SDL_SetWindowTitle(window, c"zig-sdl");

    _ = SDL_SetRenderDrawColor(renderer, 0, 64, 128, 255);
    _ = SDL_RenderClear(renderer);

    const r1 = SDL_Rect{ .x = 10, .y = 10, .w = 10, .h = 10 };
    const r2 = SDL_Rect{ .x = 40, .y = 10, .w = 10, .h = 10 };
    var rects = []SDL_Rect{ r1, r2 };

    _ = SDL_SetRenderDrawColor(renderer, 0, 128, 128, 255);
    _ = SDL_RenderFillRects(renderer, @ptrCast([*]SDL_Rect, &rects[0]), 2);

    _ = SDL_RenderPresent(renderer);

    SDL_Delay(3000);
    return 0;
}
