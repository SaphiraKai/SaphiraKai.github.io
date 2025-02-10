import lustre/attribute
import lustre/element.{type Element}
import lustre/element/html

pub fn render() -> Element(a) {
  html.div([attribute.style([#("user-select", "none")])], [
    html.div([attribute.class("hzn-splash-text")], [
      html.h1([], [element.text("Hi there!")]),
      html.h2([[#("line-height", "2")] |> attribute.style], [
        element.text("Whether you're interested in "),
        html.span([attribute.class("hzn-badge-pink")], [
          element.text("programming stuff"),
        ]),
        element.text(", "),
        html.span([attribute.class("hzn-badge-blue")], [
          element.text("electronic music"),
        ]),
        element.text(", or neat little "),
        html.span([attribute.class("hzn-badge-yellow")], [
          element.text("webapps"),
        ]),
        element.text(", there's probably something here you'll like."),
        html.br([]),
        element.text("Probably."),
      ]),
    ]),
  ])
}
