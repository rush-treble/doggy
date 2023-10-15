module doggy.render;

SDL_Renderer* renderer_ptr;

import bindbc.sdl;
import window = doggy.window;
import message_box = doggy.message_box;

void init() {
    renderer_ptr = SDL_CreateRenderer(window.window_ptr, -1, SDL_RENDERER_ACCELERATED);
    if(renderer_ptr == null) {
        message_box.show_error("Erorr!!!!", "renderer did not get made...");
    }
}

void set_color(int r, int g, int b, int a) {
    SDL_SetRenderDrawColor(renderer_ptr, cast(ubyte) r, cast(ubyte) g, cast(ubyte) b, cast(ubyte) a);
}

void clear() {
    SDL_RenderClear(renderer_ptr);
}

void present() {
    SDL_RenderPresent(renderer_ptr);
}

void draw_rectangle(int x, int y, int w, int h) {
    SDL_Rect rect;

    rect.w = w;
    rect.h = h;
    rect.x = x;
    rect.y = y;

    SDL_RenderFillRect(renderer_ptr, &rect);
}
