module game;

fn int main() {
  initWindow(1000, 1000, "hello from c3");
  defer closeWindow();
  
  while(!windowShouldClose()) {
    beginDrawing();
    defer endDrawing();

    clearBackground(isMouseButtonDown(LEFT_MOUSE) ? BLACK : WHITE);

    drawRectangle(getMouseX(), getMouseY(), 100, 100, RED);
  }

  return 0;
}
