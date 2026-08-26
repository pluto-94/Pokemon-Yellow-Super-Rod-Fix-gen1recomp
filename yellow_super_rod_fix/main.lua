-- Pokemon Yellow Super Rod Fix for gen1recomp.
--
-- This version is self-contained: it does not trust generated field.lua
-- Super Rod data because affected gen1recomp Yellow builds can contain
-- Red/Blue fallback pools there.
--
-- Canonical data source:
--   pret/pokeyellow data/wild/super_rod.asm
-- Canonical weighting source:
--   pret/pokeyellow engine/items/super_rod.asm
-- Bite behavior source:
--   pret/pokeyellow engine/items/item_effects.asm (ItemUseSuperRod)
--
-- Restored behavior:
--   Slot 1: 102/256 = 39.84375%
--   Slot 2:  76/256 = 29.68750%
--   Slot 3:  51/256 = 19.921875%
--   Slot 4:  27/256 = 10.546875%
--   Separate bite roll: 128/256 = 50%
--
-- Old Rod and Good Rod are deliberately left untouched.

local yellowSuperRod = {
  PALLET_TOWN = {
    { species = "STARYU", level = 10 },
    { species = "TENTACOOL", level = 10 },
    { species = "STARYU", level = 5 },
    { species = "TENTACOOL", level = 20 },
  },
  VIRIDIAN_CITY = {
    { species = "POLIWAG", level = 5 },
    { species = "POLIWAG", level = 10 },
    { species = "POLIWAG", level = 15 },
    { species = "POLIWAG", level = 10 },
  },
  CERULEAN_CITY = {
    { species = "GOLDEEN", level = 25 },
    { species = "GOLDEEN", level = 30 },
    { species = "SEAKING", level = 30 },
    { species = "SEAKING", level = 40 },
  },
  VERMILION_CITY = {
    { species = "TENTACOOL", level = 15 },
    { species = "TENTACOOL", level = 20 },
    { species = "TENTACOOL", level = 10 },
    { species = "HORSEA", level = 5 },
  },
  CELADON_CITY = {
    { species = "GOLDEEN", level = 5 },
    { species = "GOLDEEN", level = 10 },
    { species = "GOLDEEN", level = 15 },
    { species = "GOLDEEN", level = 20 },
  },
  FUCHSIA_CITY = {
    { species = "MAGIKARP", level = 5 },
    { species = "MAGIKARP", level = 10 },
    { species = "MAGIKARP", level = 15 },
    { species = "GYARADOS", level = 15 },
  },
  CINNABAR_ISLAND = {
    { species = "STARYU", level = 15 },
    { species = "TENTACOOL", level = 15 },
    { species = "STARYU", level = 10 },
    { species = "TENTACOOL", level = 30 },
  },
  ROUTE_4 = {
    { species = "GOLDEEN", level = 20 },
    { species = "GOLDEEN", level = 25 },
    { species = "GOLDEEN", level = 30 },
    { species = "SEAKING", level = 30 },
  },
  ROUTE_6 = {
    { species = "GOLDEEN", level = 5 },
    { species = "GOLDEEN", level = 10 },
    { species = "GOLDEEN", level = 15 },
    { species = "GOLDEEN", level = 20 },
  },
  ROUTE_24 = {
    { species = "GOLDEEN", level = 20 },
    { species = "GOLDEEN", level = 25 },
    { species = "GOLDEEN", level = 30 },
    { species = "SEAKING", level = 30 },
  },
  ROUTE_25 = {
    { species = "KRABBY", level = 10 },
    { species = "KRABBY", level = 15 },
    { species = "KINGLER", level = 15 },
    { species = "KINGLER", level = 25 },
  },
  ROUTE_10 = {
    { species = "KRABBY", level = 15 },
    { species = "KRABBY", level = 20 },
    { species = "HORSEA", level = 10 },
    { species = "KINGLER", level = 25 },
  },
  ROUTE_11 = {
    { species = "TENTACOOL", level = 15 },
    { species = "TENTACOOL", level = 20 },
    { species = "TENTACOOL", level = 10 },
    { species = "HORSEA", level = 5 },
  },
  ROUTE_12 = {
    { species = "HORSEA", level = 20 },
    { species = "HORSEA", level = 25 },
    { species = "SEADRA", level = 25 },
    { species = "SEADRA", level = 35 },
  },
  ROUTE_13 = {
    { species = "HORSEA", level = 15 },
    { species = "HORSEA", level = 20 },
    { species = "TENTACOOL", level = 10 },
    { species = "SEADRA", level = 20 },
  },
  ROUTE_17 = {
    { species = "TENTACOOL", level = 5 },
    { species = "TENTACOOL", level = 15 },
    { species = "SHELLDER", level = 25 },
    { species = "SHELLDER", level = 35 },
  },
  ROUTE_18 = {
    { species = "TENTACOOL", level = 15 },
    { species = "SHELLDER", level = 20 },
    { species = "SHELLDER", level = 30 },
    { species = "SHELLDER", level = 40 },
  },
  ROUTE_19 = {
    { species = "TENTACOOL", level = 15 },
    { species = "STARYU", level = 20 },
    { species = "TENTACOOL", level = 30 },
    { species = "TENTACRUEL", level = 30 },
  },
  ROUTE_20 = {
    { species = "TENTACOOL", level = 20 },
    { species = "TENTACRUEL", level = 20 },
    { species = "STARYU", level = 30 },
    { species = "TENTACRUEL", level = 40 },
  },
  ROUTE_21 = {
    { species = "TENTACOOL", level = 15 },
    { species = "STARYU", level = 20 },
    { species = "TENTACOOL", level = 30 },
    { species = "TENTACRUEL", level = 30 },
  },
  ROUTE_22 = {
    { species = "POLIWAG", level = 5 },
    { species = "POLIWAG", level = 10 },
    { species = "POLIWAG", level = 15 },
    { species = "POLIWHIRL", level = 15 },
  },
  ROUTE_23 = {
    { species = "POLIWAG", level = 25 },
    { species = "POLIWAG", level = 30 },
    { species = "POLIWHIRL", level = 30 },
    { species = "POLIWHIRL", level = 40 },
  },
  VERMILION_DOCK = {
    { species = "TENTACOOL", level = 10 },
    { species = "TENTACOOL", level = 15 },
    { species = "STARYU", level = 15 },
    { species = "SHELLDER", level = 10 },
  },
  SAFARI_ZONE_CENTER = {
    { species = "MAGIKARP", level = 5 },
    { species = "MAGIKARP", level = 10 },
    { species = "DRATINI", level = 10 },
    { species = "DRAGONAIR", level = 15 },
  },
  SAFARI_ZONE_EAST = {
    { species = "MAGIKARP", level = 5 },
    { species = "MAGIKARP", level = 10 },
    { species = "MAGIKARP", level = 15 },
    { species = "DRATINI", level = 15 },
  },
  SAFARI_ZONE_NORTH = {
    { species = "MAGIKARP", level = 5 },
    { species = "MAGIKARP", level = 10 },
    { species = "MAGIKARP", level = 15 },
    { species = "DRATINI", level = 15 },
  },
  SAFARI_ZONE_WEST = {
    { species = "MAGIKARP", level = 5 },
    { species = "MAGIKARP", level = 10 },
    { species = "MAGIKARP", level = 15 },
    { species = "DRATINI", level = 15 },
  },
  SEAFOAM_ISLANDS_B3F = {
    { species = "KRABBY", level = 25 },
    { species = "STARYU", level = 20 },
    { species = "KINGLER", level = 35 },
    { species = "STARYU", level = 40 },
  },
  SEAFOAM_ISLANDS_B4F = {
    { species = "KRABBY", level = 25 },
    { species = "STARYU", level = 20 },
    { species = "KINGLER", level = 35 },
    { species = "STARYU", level = 40 },
  },
  CERULEAN_CAVE_1F = {
    { species = "GOLDEEN", level = 25 },
    { species = "SEAKING", level = 35 },
    { species = "SEAKING", level = 45 },
    { species = "SEAKING", level = 55 },
  },
  CERULEAN_CAVE_B1F = {
    { species = "GOLDEEN", level = 30 },
    { species = "SEAKING", level = 40 },
    { species = "SEAKING", level = 50 },
    { species = "SEAKING", level = 60 },
  },
}

local function chooseYellowSlot(slots)
  -- Mirrors GenerateRandomFishingEncounter in Pokemon Yellow.
  local r = love.math.random(0, 255)

  if r < 0x66 then
    return slots[1]
  elseif r < 0xB2 then
    return slots[2]
  elseif r < 0xE5 then
    return slots[3]
  end

  return slots[4]
end

return function(mod)
  mod.hooks:wrap("encounter.fishing", function(next, rod, mapId, candidates)
    if rod ~= "SUPER_ROD" then
      return next(rod, mapId, candidates)
    end

    -- Pokemon Yellow has no Super Rod encounter on maps absent from
    -- SuperRodFishingSlots. Returning nil suppresses Red/Blue-only pools
    -- that may have leaked into generated Yellow field.lua.
    local slots = yellowSuperRod[mapId]
    if not slots then
      return nil
    end

    -- Yellow selects the encounter slot first...
    local slot = chooseYellowSlot(slots)

    -- ...then performs a separate 50% bite roll.
    -- Original: Random; and $1; odd = bite.
    local biteRoll = love.math.random(0, 255)
    if biteRoll % 2 == 0 then
      return nil
    end

    return {
      species = slot.species,
      level = slot.level,
    }
  end, 1000)

  mod.log:info("Pokemon Yellow Super Rod Fix v2.0.0 enabled (canonical Yellow pools + weighting + bite chance)")
end
