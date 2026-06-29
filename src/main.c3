module game;
import raylib6;
import std::os;

const GAME_NAME = "c3-game";

const TILE_SIZE = 128;
struct AssetConfig {
  int x, y; //index of asset in tilemap
}

constdef Asset : AssetConfig {
  FLOOR = {0, 0},
  WALL = {0, 1},
  PLAYER = {0, 2}
}

fn String? find_game_data_directory(Allocator a) {
  $if env::WIN32:
    ushort[128] buf;
    long? bytes_read = win32::getEnvironmentVariableW(
        "%LOCALAPPDATA%".to_temp_wstring(),
        &buf, $Typeof(buf)::size
    );
    return string::tfrom_utf16(&buf).concat(a, GAME_NAME);
  $else
    return String.concat("~/.local/share/", a, GAME_NAME);
  $endif
}

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
