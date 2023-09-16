module doggy.message_box;

import bindbc.sdl;

import doggy = doggy;

void show_message(string title, string message) {
    SDL_ShowSimpleMessageBox(SDL_MESSAGEBOX_INFORMATION, cast(const(char)*) title, cast(const(char)*) message, doggy.window.window_ptr);
}

void show_warning(string title, string message) {
    SDL_ShowSimpleMessageBox(SDL_MESSAGEBOX_WARNING, cast(const(char)*) title, cast(const(char)*) message, doggy.window.window_ptr);
}

void show_error(string title, string message) {
    SDL_ShowSimpleMessageBox(SDL_MESSAGEBOX_ERROR, cast(const(char)*) title, cast(const(char)*) message, doggy.window.window_ptr);
}
