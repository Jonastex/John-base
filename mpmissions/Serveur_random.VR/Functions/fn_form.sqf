switch ((param [0])) do {
	case 0 : {
		waitUntil {!isNull (findDisplay 46)};
		createDialog "formulaire";
	};
	case 1 : {
		private _display = findDisplay 2202;
		private _name = ctrltext (_display displayCtrl 012202);
		private _lastname = ctrltext (_display displayCtrl 022202); 
		private _comp = ctrltext (_display displayCtrl 032202);  
		private _email = ctrltext (_display displayCtrl 042202); 
		private _aera = ctrltext (_display displayCtrl 052202);
		private _num = ctrltext (_display displayCtrl 062202);
		if (_name == "") exitwith {hint "No name";};
		if (_lastname == "") exitwith {hint "No lastname";};
		if (_comp == "") exitwith {hint "No Company";};
		if (_email == "") exitwith {hint "No Email";};
		if (_aera == "") exitwith {hint "No aera";};
		if (_aera == "") exitwith {hint "No number";};

		[0, getPlayerUID player ,_name, _lastname, _comp, _email, _aera, _num] remoteExecCall ["JS_fnc_form", 2];
		closeDialog 0;
		hint "Thanks";
	};

	case 2 : {
		[1, player] remoteExecCall ["JS_fnc_form", 2];
	};

	case 3 : {
		createDialog "affi_formulaire";
		private _result = param [1];
		_list = (findDisplay 072202) displayCtrl 092202;
		{
			_list lbAdd (_x select 1);
			_list lbSetData [((lbSize _list) - 1), str _x];			
		} forEach _result;
	};

	case 4 : {
		private _sele = lbData [092202,(lbCurSel 092202)]; 
		if (_sele == "") exitwith {};
		private _sele = parseSimpleArray _sele;
		private _affi = (findDisplay 072202) displayCtrl 082202;
		private _txt = format [" ID -> %1 <br />------------------------<br /> Nom -> %2 Last Name -> %3 <br />------------------------<br /> Company -> %4 <br />------------------------<br /> Email -> %5 <br />------------------------<br />
		Aera -> %6 <br />------------------------<br /> Number -> %7", (_sele select 0), (_sele select 1),(_sele select 2), (_sele select 3),(_sele select 4), (_sele select 5),(_sele select 6)];

		_affi ctrlSetStructuredText parseText _txt;
	};
};