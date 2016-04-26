///////////////////////////////////////////////////////////
//    71st Special Operations Group Default Init.sqf     //
//    Created by the 71st SOG Development Team           //
//    Visit us on the web http://71stsog.com             //      
//    Teamspeak 3:  ts3.71stsog.com                      //
///////////////////////////////////////////////////////////

//  Preload the Virtual Arsenal
["Preload"] call BIS_fnc_arsenal;

//[] execVM "MEI_F\setOPFLoadouts.sqf";

//if (isServer) then
//{
	myNewTime = floor random 24;
	publicVariable "myNewTime";
};
//waitUntil{not isNil "myNewTime"};
//skipTime myNewTime;
