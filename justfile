_default:
  @just --list

ringfairy_cmd := "nix run github:isabelroses/ringfairy"

build:
  {{ ringfairy_cmd }}


serve:
  {{ ringfairy_cmd }}
  sirv dist/ --dev

watch:
  fd -e json -e css -e html --exclude dist/ | entr -s '{{ ringfairy_cmd }}' & sirv dist/ --dev
