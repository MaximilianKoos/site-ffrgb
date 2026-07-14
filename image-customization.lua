-- Gluon image customization for Freifunk Regensburg fork
-- for Gluon >= 2023.2

local M = {}

function M.register(common)
  common.features.autoupdater = true
  common.features["config-mode-domain-select"] = true
  common.features["config-mode-geo-location-osm"] = true
  common.features["config-mode-mesh-vpn"] = true
  common.features["ebtables-filter-multicast"] = true
  common.features["ebtables-filter-ra-dhcp"] = true
  common.features["ebtables-source-filter"] = true
  common.features["mesh-batman-adv-15"] = true
  common.features["respondd"] = true
  common.features["status-page"] = true
  common.features["web-advanced"] = true
  common.features["web-private-wifi"] = true
  common.features["web-wizard"] = true

  common.packages["gluon-segment-mover"] = true
  common.packages["iwinfo"] = true
  common.packages["gluon-ssid-changer"] = true
  common.packages["respondd-module-airtime"] = true
  common.packages["gluon-mesh-vpn-wireguard-vxlan"] = true
  common.packages["ffrgb-banner"] = true
end

return M
