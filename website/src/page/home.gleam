import lustre/attribute
import lustre/element.{type Element}
import lustre/element/html

pub fn render() -> Element(a) {
  html.div([], [
    html.h1([], [
      html.span([[#("color", "var(--hzn-primary)")] |> attribute.style], [
        element.text("Saphira"),
      ]),
      html.span([[#("color", "var(--hzn-accent)")] |> attribute.style], [
        element.text("Kai"),
      ]),
    ]),
  ])
}
