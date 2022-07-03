/*
 * Filename: d:\Serveur_random\steamapps\common\Arma 3 Server\@John_serveur\Addons\John_serveur\core\fn_init_player.sqf
 * Path: d:\Serveur_random\steamapps\common\Arma 3 Server\@John_serveur\Addons\John_serveur\core
 * Created Date: Tuesday, February 22nd 2022, 6:58:50 pm
 * Author: Jonastex
 * 
 * Copyright (c) 2022 John
 */

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

