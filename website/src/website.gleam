import lustre
import lustre/element

import page/home

pub fn main() {
  let app = lustre.element(home.render())
  let assert Ok(_) = lustre.start(app, "#app", Nil)
}
