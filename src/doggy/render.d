module doggy.render;

SDL_Renderer* renderer_ptr;

import bindbc.sdl;
import window = doggy.window;
import message_box = doggy.message_box;

void create() {
    renderer_ptr = SDL_CreateRenderer(window.window_ptr, -1, SDL_RENDERER_ACCELERATED);
    if(renderer_ptr == null) {
        message_box.show_error("Erorr!!!!", "renderer did not get made...");
    }
}

void present() {
    SDL_RenderPresent(renderer_ptr);
}
