import biscotto
import gleam/result
import gleam/string
import lustre/attribute
import lustre/element.{type Element}
import lustre/element/html

fn splash_text() -> Element(a) {
  html.div([attribute.class("hzn-splash-text")], [
    html.h1([], [element.text("Hi there!")]),
    html.h2([], [
      element.text("Whether you're interested in "),
      html.span([attribute.class("hzn-badge-pink")], [
        element.text("programming stuff"),
      ]),
      element.text(", "),
      html.span([attribute.class("hzn-badge-blue")], [
        element.text("electronic music"),
      ]),
      element.text(", or neat little "),
      html.span([attribute.class("hzn-badge-yellow")], [element.text("webapps")]),
      element.text(", there's probably something here you'll like."),
      html.br([]),
      element.text("Probably."),
    ]),
  ])
}

fn social_bar() -> Element(a) {
  html.div([attribute.class("hzn-social-bar")], [
    html.a([attribute.href("https://github.com/SaphiraKai")], [
      html.img([attribute.src("https://github.com/favicon.ico")]),
      element.text("GitHub"),
    ]),
    html.a([attribute.href("https://www.youtube.com/@saphirakai")], [
      html.img([attribute.src("https://youtube.com/favicon.ico")]),
      element.text("YouTube"),
    ]),
    html.a([attribute.href("https://hex.pm/users/saphirakai")], [
      html.img([attribute.src("https://hex.pm/favicon.ico")]),
      element.text("Hex"),
    ]),
  ])
}

pub fn render() -> Element(a) {
  let jar = biscotto.init()
  let test_cookie = jar |> biscotto.get("test") |> string.inspect

  html.div([attribute.style([#("user-select", "none")])], [
    splash_text(),
    social_bar(),
    element.text(test_cookie),
  ])
}
