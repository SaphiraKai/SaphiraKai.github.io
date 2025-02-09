import lustre/attribute
import lustre/element.{type Element}
import lustre/element/html

pub fn render() -> Element(a) {
  html.div([], [
    html.h1(
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
      [element.text("Hi there!")],
    ),
    html.h2([[#("color", "var(--hzn-secondary)")] |> attribute.style], [
      element.text("Whether you're interested in "),
      html.span([[#("color", "var(--hzn-secondary)")] |> attribute.style], [
        element.text("programming stuff"),
      ]),
      element.text(", "),
      html.span([[#("color", "var(--hzn-secondary)")] |> attribute.style], [
        element.text("music"),
      ]),
      element.text(", or neat little "),
      html.span([[#("color", "var(--hzn-secondary)")] |> attribute.style], [
        element.text("webapps"),
      ]),
      element.text(", there's probably something here for you."),
    ]),
  ])
}
