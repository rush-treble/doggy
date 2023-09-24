module doggy.console;

import std.stdio;
import bindbc.sdl;
import std.conv;

void info(string text, string filename = __FILE__, int line = __LINE__)
{
    writeln("[INFO @ ", SDL_GetTicks(), " - ", filename, ":", to!string(line), " ] ", text);
}

void warning(string text, string filename = __FILE__, int line = __LINE__)
{
    writeln("[WARN @ ", SDL_GetTicks(), " - ", filename, ":", to!string(line), " ] ", text);
}

void error(string text, string filename = __FILE__, int line = __LINE__)
{
    writeln("[ERROR @ ", SDL_GetTicks(), " - ", filename, ":", to!string(line), " ] ", text);
}
