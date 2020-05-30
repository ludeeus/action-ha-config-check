# Home Assistant Configuration Check

_Check Home Assistant Configuration as a GitHub action!_

This checks your github hosted configuration against Home Assistant versions.

If you have custom_components in your repository it will also install the requirements of those before running the configuration check.

## Basic example

```yaml
name: "Run action"
on:
  push:
    branch:
      - master
  pull_request:
    branch:
      - master

jobs:
  check:
    name: Home Assistant Config Check
    runs-on: ubuntu-latest
    steps:
    - name: Checkout
      uses: actions/checkout@master
    - name: Run Config Check
      uses: ludeeus/action-ha-config-check@master
```

## Inputs

input | description
-- | --
`version` | `STABLE`, `RC` or `DEV` (defaults to `STABLE`).
`config_path` | Relative path to your configuration if not in the root of the repository.

### Example with inputs

```yaml
name: "Run action"
on:
  push:
    branch:
      - master
  pull_request:
    branch:
      - master

jobs:
  check:
    name: Home Assistant Config Check
    runs-on: ubuntu-latest
    steps:
    - name: Checkout
      uses: actions/checkout@master
    - name: Run Config Check
      uses: ludeeus/action-ha-config-check@master
      with:
        version: DEV
        config_path: config
```
