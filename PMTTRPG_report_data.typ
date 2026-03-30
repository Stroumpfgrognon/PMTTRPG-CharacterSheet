#import "examples/example-characters.typ" as example
#import "bin/report.typ" as report

/*
Explanation for the variables :
  - The sheet design to use, must match a folder in Sheets/ with the right file structure (see RCorp for an example)
  - The character class to load, use empty_character for a blank sheet. (see characters.typ for an example)
  - If the character has E.G.O, display and fill the E.G.O section on the back of the sheet (see Kali).
  - Calculate character secondary stats (including level and rank) from the character's main 6 stats and if true, prioritize the written stats or not over the calculated ones. (see Tainted Mist for an example)
*/

#let sheet = "Hana"

#let character = example.TaintedMist

#let ego-unlocked = true

#let auto-calculate-stats = true
#let prioritize-written-stats = true

#report.report(sheet, character, ego-unlocked, auto-calculate-stats,prioritize-written-stats)
