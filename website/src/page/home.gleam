import lustre/attribute
import lustre/element.{type Element}
import lustre/element/html

pub fn render() -> Element(a) {
  html.div([], [
    html.h1([], [
      html.span(
        [
          [
            #(
              "background-image",
              "linear-gradient(30deg, var(--hzn-primary), var(--hzn-accent))",
            ),
            #("color", "transparent"),
            #("background-clip", "text"),
          ]
          |> attribute.style,
        ],
        [element.text("Saphira")],
      ),
      html.span([[#("color", "var(--hzn-secondary)")] |> attribute.style], [
        element.text("Kai"),
      ]),
    ]),
  ])
}
