module game;

struct Color {
  char r;
  char g;
  char b;
  char a;
}

const RED = (Color){255, 0, 0, 255};
const BLACK = (Color){0, 0, 0, 255};
const WHITE = (Color){234, 234, 234, 255};

const LEFT_MOUSE = 0;
const MIDDLE_MOUSE = 2;
const RIGHT_MOUSE = 1;

extern fn void
initWindow(int width, int height, char * title) @cname("InitWindow");
extern fn void closeWindow() @cname("CloseWindow");
extern fn bool windowShouldClose() @cname("WindowShouldClose");
extern fn void beginDrawing() @cname("BeginDrawing");
extern fn void endDrawing() @cname("EndDrawing");
extern fn void
drawRectangle(int x, int y, int w, int h, Color c) @cname("DrawRectangle");
extern fn int getScreenWidth() @cname("GetScreenWidth");
extern fn int getScreenHeight() @cname("GetScreenHeight");
extern fn bool isKeyDown(int key) @cname("IsKeyDown");
extern fn bool isMouseButtonDown(int button) @cname("IsMouseButtonDown");
extern fn int getMouseX() @cname("GetMouseX");
extern fn int getMouseY() @cname("GetMouseY");
extern fn int clearBackground(Color color) @cname("ClearBackground");
