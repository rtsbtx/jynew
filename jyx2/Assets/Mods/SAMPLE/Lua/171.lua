Talk(1170, "哎，现在要是谁能连吃十个我做的罗大饼，我不但不收钱，还倒送他一个我的传家宝。");
Talk(0, "哈哈哈，这么卷了吗。");
if InTeam(90) == true then goto label0 end;
    do return end;
::label0::
    Talk(90, "还有这种好事，老板你说话算话吗？");
    Talk(1170, "君子一言，驷马难追！");
    Talk(0, "小妞，你就得了吧，你那小身材能吃三个就够撑了。");
    Talk(90, "六一哥，你是真不知道我牛家大小姐的厉害吗。老板上饼！");
    Talk(1170, "好嘞！罗大饼来喽，没吃完十个可是要收钱的哦。");
    Talk(0, "哎哎……");

    Talk(0, "我的天啊……");
    Talk(90, "嗯，好吃，我吃了多少个，我没数。");
    Talk(1170, "二十八个……");
    Talk(90, "哈哈，还有吗？");
    Talk(1170, "今天的面粉用完了……你是哪来的小妞，这么生猛。");
    Talk(0, "原来我的队伍中还有这样的高手……");
    Talk(90, "老板，你说有什么传家宝，快送给我吧。");
    Talk(1170, "好吧，今天算是碰上有缘人了，姑娘这么喜欢吃我家的罗大饼，你给了我继续做下去的信心，还真是谢谢你。");
    Talk(90, "就是挺好吃的嘛。");
    Talk(1170, "这张饼我收藏了十年，今天就送给你了。");
    Talk(90, "十年？都臭了吧，我还以为是什么宝贝呢。");
    AddItem(170, 1);
    ModifyEvent(-2, -2, -2, -2, 172, -1, -1, -2, -2, -2, -2, -2, -2);
do return end;
