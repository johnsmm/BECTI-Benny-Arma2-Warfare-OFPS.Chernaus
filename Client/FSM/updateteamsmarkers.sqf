private["_sideText","_label","_count"];

_sideText = sideJoinedText;
_label = "";
_count = 1;

{
	_marker = Format["%1AdvancedSquad%2Marker",_sideText,_count];
	createMarkerLocal [_marker,[0,0,0]];
	_marker setMarkerTypeLocal "b_inf";
	_marker setMarkerColorLocal "ColorBlue";
	_marker setMarkerSizeLocal [1,1];
	_count = _count +1;
} forEach clientTeams;

while {!gameOver} do {
	_count = 1;
	{
		if !(isNil '_x') then {
			_markerType = "b_inf";
			_marker = Format["%1AdvancedSquad%2Marker",_sideText,_count];
		
			if (alive (leader _x)) then {
				_label = "";
				if (isPlayer (leader _x)) then {_label = Format["%1 [%2]",name (leader _x),_count]} else {_label = Format["AI [%1]",_count]};
				_marker setMarkerTextLocal _label;
				_marker setMarkerPosLocal GetPos (leader _x);
			} else {
				_markerType = "b_empty";
			};
	
			_marker setMarkerTypeLocal _markerType;
		};
		_count = _count + 1;
	} forEach clientTeams;
	sleep 1;
};