/**
 * @author John life is dev 
 * @email Jonastex#2733
 * @create date 2021-03-02
 * @modify date 2021-03-02
 * @desc [Requete base de donner]
 */
//params ["_mode", "_req"];
params ["_req", "_mode"];
_key = "extDB3" callExtension format["%1:%2:%3",_mode, (call extDB_SQL_CUSTOM_ID), _req];

if (_mode == 1) exitwith {true};

_key = call compile format ["%1",_key];
_key = (_key select 1);
_queryResult = "extDB3" callExtension format ["4:%1", _key];

//Make sure the data is received
if (_queryResult isEqualTo "[3]") then {
    for "_i" from 0 to 1 step 0 do {
        if (!(_queryResult isEqualTo "[3]")) exitWith {};
        _queryResult = "extDB3" callExtension format ["4:%1", _key];
    };
};

if (_queryResult isEqualTo "[5]") then {
    _loop = true;
    for "_i" from 0 to 1 step 0 do { // extDB3 returned that result is Multi-Part Message
        _queryResult = "";
        for "_i" from 0 to 1 step 0 do {
            _pipe = "extDB3" callExtension format ["5:%1", _key];
            if (_pipe isEqualTo "") exitWith {_loop = false};
            _queryResult = _queryResult + _pipe;
        };
    if (!_loop) exitWith {};
    };
};
_queryResult = call compile _queryResult;
if ((_queryResult select 0) isEqualTo 0) exitWith {diag_log format ["extDB3: Protocol Error: %1", _queryResult]; []};
_return = (_queryResult select 1);
if (!_multiarr && count _return > 0) then {
    _return = (_return select 0);
};

_return;


/* ça pas sur du tout ça vient de Layeed 
_key = call compile format["%1",_query];
_key = _key select 1;
diag_log format ["Je sais pas %1", _key];
//uisleep (random .03);

private _queryResult = "";
private _loop = true;
while{_loop} do
{
	_queryResult = "extDB3" callExtension format["4:%1", _key];
	if (_queryResult isEqualTo "[5]") then {
		// extDB3 returned that result is Multi-Part Message
		_queryResult = "";
		while{true} do {
			_pipe = "extDB3" callExtension format["5:%1", _key];
			if(_pipe isEqualTo "") exitWith {_loop = false};
			_queryResult = _queryResult + _pipe;
		};
	}
	else
	{
		if (_queryResult isEqualTo "[3]") then
		{
			diag_log format ["extDB3: uisleep [4]: %1", diag_tickTime];
			uisleep 0.1;
		} else {
			_loop = false;
		};
	};
};

_queryResult = call compile _queryResult;

// Not needed, its SQF Code incase extDB3 ever returns error message i.e Database Connection Died
if ((_queryResult select 0) isEqualTo 0) exitWith {diag_log format ["extDB3: Protocol Error: %1", _queryResult]; []};
private _return = (_queryResult select 1);
_return
*/