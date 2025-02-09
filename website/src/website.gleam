import lustre
import lustre/element

pub fn main() {
  let app = lustre.element(element.text("test"))
  let assert Ok(_) = lustre.start(app, "#app", Nil)
}
