module doggy.draw;

import bindbc.sdl;
import render = doggy.render;

void set_color(int r, int g, int b, int a) {
    SDL_SetRenderDrawColor(render.renderer_ptr, cast(ubyte) r, cast(ubyte) g, cast(ubyte) b, cast(ubyte) a);
}

void clear() {
    SDL_RenderClear(render.renderer_ptr);
}

void rectangle(int x, int y, int w, int h) {
    SDL_Rect rect;

    rect.w = w;
    rect.h = h;
    rect.x = x;
    rect.y = y;

    SDL_RenderFillRect(render.renderer_ptr, &rect);
}
