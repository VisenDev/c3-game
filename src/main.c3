module game;
import raylib6;

fn int main() {
  rl::init_window(1000, 1000, "hello from c3");
  defer rl::close_window();
  
  while(!rl::window_should_close()) {
    rl::begin_drawing();
    defer rl::end_drawing();

    rl::clear_background(
      rl::is_mouse_button_down(RLMouseButton.LEFT) ? rl::BLACK : rl::WHITE);

    rl::draw_rectangle(rl::get_mouse_x(), rl::get_mouse_y(), 100, 100, rl::RED);
  }

  return 0;
}
