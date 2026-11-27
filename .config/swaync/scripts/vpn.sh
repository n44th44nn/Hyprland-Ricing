#!/usr/bin/env bash
# ~/.config/swaync/scripts/vpn.sh
# Called by the VPN toggle in swaync's config.json:
#   vpn.sh connect | disconnect | status     (status must print "true" or "false")

# TODO: confirm this name while eduVPN is connected:
#   nmcli -t -f NAME,TYPE,DEVICE connection show --active
VPN_CONN_NAME="eduVPN"

is_active() {
  nmcli -t -f NAME connection show --active | grep -qx "$VPN_CONN_NAME"
}

vpn_connect() {
  # TODO: put the eduVPN connect command here (see: eduvpn-cli --help)
  notify-send "VPN" "Connect is not configured yet (edit scripts/vpn.sh)"
  return 1
}

vpn_disconnect() {
  # TODO: put the eduVPN disconnect command here
  notify-send "VPN" "Disconnect is not configured yet (edit scripts/vpn.sh)"
  return 1
}

case "$1" in
  connect)    vpn_connect ;;
  disconnect) vpn_disconnect ;;
  status)     is_active && echo true || echo false ;;
  *)          echo "usage: $0 connect|disconnect|status" >&2; exit 2 ;;
esac