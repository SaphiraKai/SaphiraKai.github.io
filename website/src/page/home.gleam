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
    html.h2([[#("line-height", "2")] |> attribute.style], [
      element.text("Whether you're interested in "),
      html.span([attribute.class("hzn-badge-primary")], [
        element.text("programming stuff"),
      ]),
      element.text(", "),
      html.span([attribute.class("hzn-badge-secondary")], [
        element.text("music"),
      ]),
      element.text(", or neat little "),
      html.span([attribute.class("hzn-badge-accent")], [element.text("webapps")]),
      element.text(", there's probably something here for you."),
    ]),
  ])
}
