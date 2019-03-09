#!/bin/sh

if [ "$ACTION_VERSION" = "DEV" ]; then
  python3 -m pip install git+git://github.com/home-assistant/home-assistant.git@dev
elif [ "$ACTION_VERSION" = "RC" ]; then
  python3 -m pip install --pre homeassistant
elif [ "$ACTION_VERSION" = "STABLE" ]; then
  python3 -m pip install homeassistant
else
  echo "Only 'STABLE', 'RC or 'DEV' are valid."
fi

if [ "$ACTION_ALLOW_FAIL" = "True" ]; then
  hass --script check_config --config "$GITHUB_WORKSPACE"/"$ACTION_CONFIG_PATH" || exit 78
else
  hass --script check_config --config "$GITHUB_WORKSPACE"/"$ACTION_CONFIG_PATH"
fi
