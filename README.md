# Sniper: Ghost Warrior Autosplitter
A LiveSplit autosplitter for use in speedrunning the video game *Sniper: Ghost Warrior*. The script uses pointers to read information the game is storing in main memory, then uses this information to accurately time the user's playthrough.

## Memory pointers used
| Pointer   | Description                                           |
|-----------|-------------------------------------------------------|
| level     | Number corresponding to the current level             |
| isLoading | Determine if the game is loading                      |
| timer     | Value of the game's internal timer                    |
| fadeOut   | Opacity of the final level's fade-to-black transition |

## Usage
If the timing method in LiveSplit is set to Game Time, the timer will automatically pause while the game is loading. The timer automatically starts once the player finishes loading into the first level, *Training Ground*. The script will split when the player has progressed to the next level. Additionally, a split occurs once the final level's fade-to-black transition completes, ending the speedrun. 