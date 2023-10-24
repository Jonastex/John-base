private ["_uid", "_ret"];
params ["_uid", "_ret"];
diag_log "init serveur";

private _query = format ["SELECT uid FROM player WHERE uid='%1'", _uid];
private _result = [_query,2] call JS_fnc_request;
if !(_result isEqualTo []) exitwith {diag_log "deja init";};

diag_log format ["New player uid -> %1", _uid];
private _query = format ["INSERT INTO player (uid) VALUES('%1')",_uid];
[_query,1] call JS_fnc_request;

[0] remoteExec ["john_fnc_form", (owner _ret)];
