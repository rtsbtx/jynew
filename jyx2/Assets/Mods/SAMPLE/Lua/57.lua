if UseItem(90) == true then goto label0 end;
    do return end;
::label0::
    Talk(155, "啊？这是金角黄牛肉！");
    Talk(0, "哈哈，送给你。");
    Talk(155, "谢谢少侠！我该如何报答你才好！");
    Talk(0, "我现在正在追查莫穿林掌门的死因，也不知你能帮得上什么忙。");
    Talk(155, "我一介厨子，还真帮不上什么忙，但关于莫掌门的死因，我这有个非常重要的线索。");
    Talk(0, "重要线索？什么线索！");
    Talk(155, "来，少侠，你来瞧瞧这只杯子。");
    Talk(0, "这只杯子有何奇怪的吗？");
    Talk(155, "你仔细看看杯底。");
    Talk(0, "紫色！");
    Talk(155, "这只杯子我从初五那天晚上就没洗过，但我又不知找谁去说这个秘密。");
    Talk(0, "什么意思？");
    Talk(155, "没记错的话，这是那天晚上莫穿林掌门喝酒用过的杯子。");
    Talk(0, "你是说，他被人下毒了？");
    Talk(155, "对，因为我做厨子的，对餐具和器皿比较敏感，那天我发现这个杯底有奇怪的颜色，就偷偷的藏了起来。");
    Talk(0, "紫色植物状粉末，罂粟谷！");
    Talk(155, "你知道是谁下的毒了？");
    Talk(0, "我想是的，太谢谢你了，我先告辞了！");
    AddItem(50, 1);
    AddItemWithoutHint(90, -1);
    ModifyEvent(-2, -2, -2, -2, 58, -1, -1, -2, -2, -2, -2, -2, -2);
    ModifyEvent(-2, 4, -2, -2, 53, -1, -1, -2, -2, -2, -2, -2, -2);--怡麟楼，顾客丙，B
    ModifyEvent(7, 1, -2, -2, 72, -1, -1, -2, -2, -2, -2, -2, -2);--罂粟谷，佟雯，B
do return end;
