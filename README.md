# Arma 3 Respawnie

This is a simple mission where you respawn when you die. I use this to flight training.
After crashing with plane or heli, will respawn again.

To use the script, copy `init.sqf` to your own mission, then on the editor add a marker called 'respawn_pos' then you edit the `player` unit and add this initialization code:

```
this addEventHandler [ "Killed", {call on_player_die;}];
```

When the unit is in a vehicle and die, it will respawn with a new vehicle near the crash area.

If the player died on foot, it will respawn on the `respawn_pos` marker position.