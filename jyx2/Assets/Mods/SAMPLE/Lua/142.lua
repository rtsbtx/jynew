jyx2_ReplaceSceneObject("", "NPC/Wolf_prefab (10)", "1");
jyx2_ReplaceSceneObject("", "NPC/Wolf_prefab (11)", "1");
jyx2_ReplaceSceneObject("", "NPC/Wolf_prefab (12)", "1");
jyx2_ReplaceSceneObject("", "NPC/Wolf_prefab (13)", "1");
jyx2_ReplaceSceneObject("", "NPC/Wolf_prefab (14)", "1");
jyx2_ReplaceSceneObject("", "NPC/Wolf_prefab (15)", "1");
jyx2_ReplaceSceneObject("", "NPC/Wolf_prefab (16)", "1");
jyx2_ReplaceSceneObject("", "NPC/Wolf_prefab (17)", "1");
jyx2_ReplaceSceneObject("", "NPC/Wolf_prefab (18)", "1");
jyx2_ReplaceSceneObject("", "NPC/Wolf_prefab (19)", "1");
jyx2_ReplaceSceneObject("", "NPC/Wolf_prefab (20)", "1");
Talk(0, "咦？这群狼似乎在围着一头死去的野狼，没想到狼这么凶残的动物也还是这么重感情，再想到我自己，还真是倍感凄凉啊……");
if TryBattle(142) == true then goto label0 end;
    Dead();
    do return end;
::label0::
    LightScence();
    jyx2_ReplaceSceneObject("", "NPC/Wolf_prefab (10)", "");
    jyx2_ReplaceSceneObject("", "NPC/Wolf_prefab (11)", "");
    jyx2_ReplaceSceneObject("", "NPC/Wolf_prefab (12)", "");
    jyx2_ReplaceSceneObject("", "NPC/Wolf_prefab (13)", "");
    jyx2_ReplaceSceneObject("", "NPC/Wolf_prefab (14)", "");
    jyx2_ReplaceSceneObject("", "NPC/Wolf_prefab (15)", "");
    jyx2_ReplaceSceneObject("", "NPC/Wolf_prefab (16)", "");
    jyx2_ReplaceSceneObject("", "NPC/Wolf_prefab (17)", "");
    jyx2_ReplaceSceneObject("", "NPC/Wolf_prefab (18)", "");
    jyx2_ReplaceSceneObject("", "NPC/Wolf_prefab (19)", "");
    ModifyEvent(-2, -2, -2, -2, -1, -1, -1, -2, -2, -2, -2, -2, -2);
do return end;
