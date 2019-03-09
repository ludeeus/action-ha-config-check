workflow "Trigger: Push" {
  on = "push"
  resolves = ["Black Code Formatter"]
}

action "Shellcheck" {
  uses = "ludeeus/action-shellcheck@master"
}