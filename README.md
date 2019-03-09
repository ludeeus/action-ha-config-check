# HA-CONFIG-CHECK

[![BuyMeCoffee][buymecoffeebedge]][buymecoffee]

_Check Home Assistant Configuration_

## Example

```
workflow "Check Home Assistant Configuration" {
  on = "push"
  resolves = ["STABLE", "RC", "DEV"]
}

action "STABLE" {
  uses = "ludeeus/action-ha-config-check@master"
  env = {
    ACTION_VERSION = "STABLE"
  }
}

action "RC" {
  uses = "ludeeus/action-ha-config-check@master"
  env = {
    ACTION_VERSION = "RC"
  }
}

action "DEV" {
  uses = "ludeeus/action-ha-config-check@master"
  env = {
    ACTION_VERSION = "DEV"
    ACTION_ALLOW_FAIL = "True"
  }
}
```

**REQUIRE GITHUB_TOKEN**

## ENV VARS

ENV | description
-- | --
`ACTION_VERSION` | `STABLE`, `RC` or `DEV`.
`ACTION_CONFIG_PATH` | Relative path to your configuration if not in the root of the repository.
`ACTION_ALLOW_FAIL` | Set to `True` to allow failure.


[buymecoffee]: https://www.buymeacoffee.com/ludeeus
[buymecoffeebedge]: https://camo.githubusercontent.com/cd005dca0ef55d7725912ec03a936d3a7c8de5b5/68747470733a2f2f696d672e736869656c64732e696f2f62616467652f6275792532306d6525323061253230636f666665652d646f6e6174652d79656c6c6f772e737667
