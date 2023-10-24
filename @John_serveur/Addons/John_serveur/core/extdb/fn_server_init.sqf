diag_log "Reception fichier EXTDB3";
if ( isNil {uiNamespace getVariable "extDB_SQL_CUSTOM_ID"})
	then {
		private _version = "extDB3" callExtension "9:VERSION";
		diag_log format ["Version de EXTDB3 : %1", _version];
		if (_version isEqualTo "") exitWith {diag_log "ERREUR LANCEMENT EXTDB3";};

		private _bdd = "serveur_random"; // nom base de donner
		private _protocol = "SQL"; // SQL

		_result = call compile ("extDB3" callExtension format ["9:ADD_DATABASE:%1", _bdd]);
		if (_result select 0 isEqualTo 0) exitWith {diag_log format ["extDB3: Error Failed to Connect to Database: %1", _result];};

		diag_log "Connexion base de données établie";

		_extDB_SQL_CUSTOM_ID = str(round (random 999999)); // rand nom protocol 
		extDB_SQL_CUSTOM_ID = compileFinal _extDB_SQL_CUSTOM_ID;

		_result_proto = parseSimpleArray ("extDB3" callExtension format["9:ADD_DATABASE_PROTOCOL:%1:%2:%3:TEXT2", _bdd, _protocol, _extDB_SQL_CUSTOM_ID]);
		if ((_result_proto select 0) isEqualTo 0) exitWith {diag_log format ["extDB3: Error Database Setup: %1", _result_proto];};

		diag_log format ["Le protocol %1 a bien été initialiser", _protocol];

		"extDB3" callExtension "9:LOCK";
		diag_log "EXTDB3 a été lock";

		uiNamespace setVariable ["extDB_SQL_CUSTOM_ID", _extDB_SQL_CUSTOM_ID];
		diag_log format ["ID random sauvegarder %1", _extDB_SQL_CUSTOM_ID];
	};
