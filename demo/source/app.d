module doggy_demo;

import doggy = doggy;

import bindbc.sdl;

void main()
{
    doggy.init();
    doggy.window.set_title("Demo");
    doggy.window.set_size(300, 300);

    bool quit = false;
    while (!quit) {

        SDL_Event e;

        // Wait indefinitely for the next available event
        SDL_WaitEvent(&e);

        // User requests quit
        if(e.type == SDL_QUIT)
        {
            quit = true;
        }

        // clear screen
        doggy.draw.set_color(0, 0, 0, 0);
        doggy.draw.clear();

        // draw rectangle
        doggy.draw.set_color(255, 0, 0, 255);
        doggy.draw.rectangle(0, 0, 50, 50);

        doggy.render.present();

        SDL_Delay(16);
    }

    doggy.console.info("bye bye");
}
