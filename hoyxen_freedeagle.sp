#include <sourcemod>
#include <sdktools>
#pragma tabsize 0
#pragma semicolon 1

public Plugin myinfo =
{
    name = "Free Deagle",
    author = "hoyxen",
    version = "1.0",
    description = "free deagle for vips",
    url = "https://steamcommunity.com/id/HOYXEN/"
};

public OnPluginStart()
{
    LoadTranslations("hoyxen_freedeagle.phrases");
    RegAdminCmd("sm_freedeagle", Command_freedeagle, ADMFLAG_RESERVATION);
}

public Action:Command_freedeagle(client, args)
{
	if (IsPlayerAlive(client))
	{
	GivePlayerItem(client, "weapon_deagle");
    PrintToChat(client, "[ \x10Free Deagle \x01] %t", "Receive free deagle");
	}
}