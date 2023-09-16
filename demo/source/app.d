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
    
    doggy.show_message("Hi", "test");

    SDL_Delay(10000);
}
