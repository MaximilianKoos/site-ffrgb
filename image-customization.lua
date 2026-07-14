-- Gluon image customization for Freifunk Regensburg fork
-- Migration of former GLUON_FEATURES for Gluon >= 2023.2

local M = {}

function M.register(common)
  -- Basis: Autoupdater aktiv
  common.features.autoupdater = true

  -- Config-Mode Features
  common.features["config-mode-domain-select"] = true
  common.features["config-mode-geo-location-osm"] = true
  common.features["config-mode-mesh-vpn"] = true

  -- Ebtables-Filter
  common.features["ebtables-filter-multicast"] = true
  common.features["ebtables-filter-ra-dhcp"] = true
  common.features["ebtables-source-filter"] = true

  -- Mesh / Batman-adv 15
  common.features["mesh-batman-adv-15"] = true

  -- Status/Respondd/Web
  common.features["respondd"] = true
  common.features["status-page"] = true
  common.features["web-advanced"] = true
  common.features["web-private-wifi"] = true
  common.features["web-wizard"] = true
end

return M
