
on_player_die = {
	private "_new_player";
	
	if ( vehicle player != player ) then
	{
		_old_pos = position player;
		_spawn_pos = [ (_old_pos select 0), (_old_pos select 1) - 100, (_old_pos select 2)];
		
		_heli = createvehicle [ typeOf vehicle player, _spawn_pos ,[], 0, "fly"];
		_new_player = group player createunit ["B_SOLDIER_REPAIR_F",_spawn_pos,[],0,"none"];
		_new_player moveindriver _heli;
	}
	else // else respawn on base
	{
		_new_player = group player createunit ["B_SOLDIER_REPAIR_F",getMarkerPos "respawn_pos",[],0,"none"];
	};
	
	_new_player addEventHandler [ 'Killed', {call on_player_die;} ];
	
	selectPlayer _new_player;

};
