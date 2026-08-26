# Pokémon Yellow Super Rod Fix for gen1recomp

Restores Pokémon Yellow's original Super Rod behavior in gen1recomp.

## What this mod fixes

gen1recomp currently uses Super Rod encounter data that does not
correctly represent Pokémon Yellow.

This mod restores:

- the original Pokémon Yellow encounter pools
- the original Pokémon levels
- the original four-slot weighting
- the original 50% bite chance

The mod contains the Yellow Super Rod tables directly and does not
require modifying field.lua.

## Original encounter weighting

| Slot | Probability |
|------|-------------|
| 1 | 102/256 = 39.84375% |
| 2 | 76/256 = 29.6875% |
| 3 | 51/256 = 19.921875% |
| 4 | 27/256 = 10.546875% |

These correspond to Pokémon Yellow's original thresholds:

- 0x66
- 0xB2
- 0xE5

## Scope

Only Super Rod encounters are modified.

Old Rod and Good Rod are unaffected.

## Encounter data

The mod includes the original Pokémon Yellow Super Rod tables for
31 maps and 124 encounter slots.

See:

`yellow_super_rod_fix/SUPER_ROD_TABLE.txt`

## Installation

1. Download the latest release.
2. Extract `yellow_super_rod_fix`.
3. Place the folder in your gen1recomp mods directory.
4. No field.lua modification is required.

## Sources

Pokémon Yellow disassembly:
https://github.com/pret/pokeyellow

Super Rod encounter data:
https://github.com/pret/pokeyellow/blob/master/data/wild/super_rod.asm

Super Rod selection logic:
https://github.com/pret/pokeyellow/blob/master/engine/items/super_rod.asm

gen1recomp:
https://github.com/bryanthaboi/gen1recomp

## License

MIT
