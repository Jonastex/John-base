diag_log "init";
[getPlayerUID player, player] remoteExecCall ["JS_fnc_init_player", 2];

task_deplacement = player createSimpleTask ["deplacement"]; 
task_deplacement setSimpleTaskDestination [4858.18,5392.3,0.00143909];
task_deplacement setSimpleTaskDescription ["go to this position and take the remote control", "join this position", "join this position"];
task_deplacement setTaskState "Created";
task_deplacement setTaskState "Assigned";