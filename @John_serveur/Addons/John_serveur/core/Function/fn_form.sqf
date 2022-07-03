switch ((param [0])) do {
	case 0 : {
		private ["_choix", "_uid", "_name", "_lastname", "_comp", "_email", "_aera", "_num"];
		params ["_choix", "_uid", "_name", "_lastname", "_comp", "_email", "_aera", "_num"];
		private _query = format ["INSERT INTO fiche (uid, name, lastname, company, email, aera, number) VALUES('%1','%2','%3','%4','%5','%6','%7')",_uid, _name, _lastname, _comp, _email, _aera, _num];
		[_query,1] call JS_fnc_request;
	};
	case 1 : {
		private _ret = param [1];
		private _query = "SELECT uid, name, lastname, company, email, aera, number FROM fiche";
		private _result = [_query,2] call JS_fnc_request;
		[3, _result] remoteExec ["john_fnc_form", (owner _ret)];
	};
};