switch ((param [0])) do {
	case 0 : {
		500 cutRsc["telecomande","PLAIN"];
		john_key_handler_shop_veh = findDisplay 46 displayAddEventHandler ["KeyDown", "[1, _this] spawn john_fnc_tv;"];
		john_index = 0;
		task_deplacement setTaskState "Succeeded";
	};
	case 1 : {
		switch ((param [1]) select 1) do {
			case 200: {
				private _list = getArray (missionConfigFile >> "video" >> "list_video");
				if (john_index == 0) exitwith {};
				john_index = john_index - 1;
				private _sele = _list select john_index;
				panneau_tv setobjecttextureglobal [0,_sele];
				private _img = (uiNamespace getVariable ["telecomande",displayNull]) displayCtrl 122202;
				_img ctrlSetText "#(rgb,8,8,3)color(1,0,0,1)";
				sleep 1;
				_img ctrlSetText "#(rgb,1,1,1)color(0.5,0.5,0.5,1)";
			};

			case 208 : {
				private _list = getArray (missionConfigFile >> "video" >> "list_video");
				if (john_index == ((count _list) - 1)) exitwith {};
				john_index = john_index + 1;
				private _sele = _list select john_index;
				panneau_tv setobjecttextureglobal [0,_sele];
				private _img = (uiNamespace getVariable ["telecomande",displayNull]) displayCtrl 112202;
				_img ctrlSetText "#(rgb,8,8,3)color(1,0,0,1)";
				sleep 1;
				_img ctrlSetText "#(rgb,1,1,1)color(0.5,0.5,0.5,1)";
			};
			case 1 : {
				500 cutText ["", "PLAIN"];
				findDisplay 46 displayRemoveEventHandler ["keyDown",john_key_handler_shop_veh];
				john_key_handler_shop_veh = nil;
				john_index = nil;
			};
		};
	};
};
