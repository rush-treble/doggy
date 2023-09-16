module doggy_demo;

import doggy = doggy;

import bindbc.sdl;

void main()
{
    auto ret = doggy.init();
    if (ret == 1)
    {
        doggy.console.message("sdl loaded success!");
    }

    ret = doggy.window.create("Doggy Demo", 800, 600);
    if (ret == 1)
    {
        doggy.console.message("window created success!");
    }

    doggy.render.create();

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
}
