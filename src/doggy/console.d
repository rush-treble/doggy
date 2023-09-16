module doggy.console;

import std.stdio;
import bindbc.sdl;

void info(string text)
{
    writeln("[INFO @ ", SDL_GetTicks(), "] ", text);
}

void warning(string text)
{
    writeln("[WARN @ ", SDL_GetTicks(), "] ", text);
}

void error(string text)
{
    writeln("[ERROR!!!!! @ ", SDL_GetTicks(), "] ", text);
}
