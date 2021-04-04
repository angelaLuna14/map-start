void PluginInit(){
	g_Module.ScriptInfo.SetAuthor( "Angela Luna" );
	g_Module.ScriptInfo.SetContactInfo( "https://discord.gg/vZDG886" );
	
	g_Hooks.RegisterHook( Hooks::Player::ClientPutInServer, @weaponstart );
	g_Hooks.RegisterHook( Hooks::Player::ClientPutInServer, @mapstart );   
}



HookReturnCode weaponstart( CBasePlayer@ pPlayer ){
    pPlayer.GiveNamedItem("weapon_sniperrifle", 0, 0); //ejm
	return HOOK_CONTINUE;
}


HookReturnCode mapstart( CBasePlayer@ pPlayer ){
    if(g_Engine.mapname == "inhuman"){
        pPlayer.GiveNamedItem("weapon_rpg", 0, 0); //ejm para un solo mapa 
    }
    
	return HOOK_CONTINUE;
}
