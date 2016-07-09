disableSerialization;

/*CutRsc["gps","PLAIN",0];
_icons = [
"",
""
];*/

/* Valhalla HUD */
Dialog_GUIType=1;//0-all,1-no gps,2-no health,3-no health no gps
Dialog_GUIColor=0; // Default Gui color is almost white

Local_GUIActive=true;
Local_GUIRestart=false;

//_position=getPos Local_PlayerVehicle;
_position=getPos vehicle player;
_display=uiNamespace getVariable "GUI";

_map=_display displayCtrl 6002;
_border=_display displayCtrl 6001;
	
_lowertext=_display displayCtrl 6003;

if (side player == WEST) then {
_lowertext CtrlSetBackgroundColor [0,0,1,0.9];}
 else{
_lowertext CtrlSetBackgroundColor [1,0,0,0.9];
};
_crewlist=_display displayCtrl 6004;


_dx=SafeZoneW+safeZoneX-0.245;
_dy=SafeZoneH+safeZoneY-0.2575;
	
_crewlist ctrlSetPosition [safeZoneX+0.010,SafeZoneY+0.425];
		
switch (Dialog_GUIColor) do
{
	case 0: {Dialog_GUIColorActive = "#DDDDDD";}; // White
	case 1: {Dialog_GUIColorActive = "#ff0000";}; // Red
	case 2: {Dialog_GUIColorActive = "#00FF00";}; // Green
	case 3: {Dialog_GUIColorActive = "#0033cc";}; // Blue
	case 4: {Dialog_GUIColorActive = "#ffcc33";}; // Yellow
};

//some auxiliary variables
_CurrentSpeed=0;
_TimerG=0;
_TimerC=0;
_TimerO=0;
_TimerP=0;
_TimerD=0;	
_TimerT=0;
_lastdam=0;
_playerInVehicle=false;
_updatedam=true;
if (isNil "legScream") then {
legScream = 0;
};

while{Local_GUIActive&&(alive player)&&!Local_GUIRestart&&(isNil "BIS_CONTROL_CAM")/*&& (RUBOSD == 1)*/}do

{
///--- Turn HUD ON / OFF 
if (!(RUBHUD)  || visibleMap) then {
	//Supprime l'affichage
	_map ctrlShow false;
	_lowertext ctrlShow false;
	_border	 ctrlShow false;
	
} else {
 
	_map ctrlShow true;
	_lowertext ctrlShow true;
	_border	 ctrlShow true;
};
	sleep 0.5;
};

1365 cutRsc ["Default","plain"];
Local_GUIWorking=false;
	