if UseItem(137) == true then goto label0 end;
    do return end;
::label0::
    AddEthics(3);
    if JudgeEventNum(10, -1) == true then goto label1 end;
        ModifyEvent(-2, 10, -2, -2, 867, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu 启动脚本867 场景24-编号10
::label1::
        AddItemWithoutHint(137, -1);
        Talk(0, "苗大侠，我这就帮你敷上解药。", "talkname0", 1);
        DarkScence();
        ModifyEvent(-2, -2, -2, -2, 33, -1, -1, 5216, 5216, 5216, -2, -2, -2);--by fanyu 启动脚本33，改变贴图 场景24-编号8
		witchRoleAnimation("NPC/miaorenfeng","Assets/BuildSource/jyx2_SAnimationControllers/sit_on_chair.controller");
        ModifyEvent(-2, 9, 0, -2, -1, -1, -1, -1, -1, -1, -2, -2, -2);
        LightScence();
        Talk(0, "苗大侠，你觉得怎么样？", "talkname0", 1);
        Talk(3, "嗯！我觉得好多了。少侠一路辛苦了，苗某不胜感激，若苗家有任何你需要的东西，请尽管拿取。这毒手药王也真是厉害，用毒至深，想不到医术也是一流。", "talkname3", 0);
        Talk(0, "药王他老人家已过世了，这解药是他徒弟调制的。", "talkname0", 1);
        Talk(3, "难怪，当年我因为一件事曾与药王有过冲突，所以当我听说要去求毒手药王时，我就劝你不要去。", "talkname3", 0);
        Talk(0, "是什么事？", "talkname0", 1);
        Talk(3, "这一件事我到今日还是不能明白。十八年前，我误伤了一位好友，只因兵刃上喂有剧毒，见血封喉，竟尔无法挽救。我想这毒药如此厉害，多半与毒手药王有关，因此去向他询问。结果他一口否认，说他毫不知情，想我一来不会说话，二来心情甚恶，就打了起来。", "talkname3", 0);
        Talk(0, "如此说来，这位好朋友是你亲手杀死的了？", "talkname0", 1);
        Talk(3, "是的。", "talkname3", 0);
        Talk(0, "这好朋友姓啥叫什么？", "talkname0", 1);
        Talk(3, "辽东大侠胡一刀。", "talkname3", 0);
        if InTeam(1) == false then goto label2 end;
        --jyx2_ReplaceSceneObject("","NPC/HuFei","1") --刷出hufei
            Talk(1, "当真是你杀了我父亲。", "talkname1", 1);
            Talk(3, "你是胡一刀的儿子！好，快来将我杀了，替你爹报仇。", "talkname3", 0);
            Talk(0, "且慢！这中间有很大的误会……", "talkname0", 1);
            Talk(1, "有什么误会，他都承认了。", "talkname1", 1);
            Talk(0, "你听我说，当年在苗大侠剑上偷偷喂毒的是名叫阎基的人。他因为知道苗、胡二人身上有两本极重要的书，所以在两人比武时偷偷喂上剧毒，想让二人两败俱伤，他好坐收渔翁之利。只是，当初你二人为何比试，才让阎基这小人从中搞鬼？", "talkname0", 1);
            Talk(3, "唉！当年我二人都因受过“金先生”的恩惠，所以当他的书籍被人偷出，我二人都想把书找齐送回去……当时，我二人各找到一本，双方都想把对方的书夺来，以便日后送回去，所以才相约比试。其实，只要好好讲，或许我们可以一起去找寻这些书，但可能是听双方名声太大，本就想互相较量一下，看看是他的胡家刀法厉害，还是我苗家剑法强。", "talkname3", 0);
            Talk(0, "这真是一场误会。一切都是阎基那卑鄙小人所引起的，所幸这个小人已无法再作恶了。", "talkname0", 1);
            Talk(1, "照你这么说，是我胡家刀法比不上你苗家剑法，所以死的才是我父亲。", "talkname1", 1);
            Talk(3, "其实我心中有个遗憾，当年我砍到令尊手臂时，同时我也被令尊的后着踢倒在地，只因我剑上被喂上剧毒，令尊才会毒发死亡。所以到底是何者功夫高明，一直没有答案。今天我看见你这么大了，我很高兴。但我更希望你能学好胡家刀法，把我打败，让胡家刀法发扬光大，那我对你爹也有个交待。届时这位小兄弟想要的《飞狐外传》一书也将一并送上。等你练好了胡家刀法，可随时来找我。", "talkname3", 0);
            do return end;
::label2::
            Talk(0, "苗大侠，这中间有很大的误会。", "talkname0", 1);
            Talk(3, "有什么误会？", "talkname3", 0);
            Talk(0, "你听我说，当年在苗大侠剑上偷偷喂毒的是名叫阎基的人。他因为知道苗、胡二人身上有两本极重要的书，所以在两人比武时偷偷喂上剧毒，想让二人两败俱伤，他好坐收渔翁之利。只是，当初你二人为何比试，才让阎基这小人从中搞鬼？", "talkname0", 1);
            Talk(3, "唉！当年我二人都因受过“金先生”的恩惠，所以当他的书籍被人偷出，我二人都想把书找齐送回去……当时，我二人各找到一本，双方都想把对方的书夺来，以便日后送回去，所以才相约比试。其实，只要好好讲，或许我们可以一起去找寻这些书，但可能是听双方名声太大，本就想互相较量一下，看看是他的胡家刀法厉害，还是我苗家剑法强。", "talkname3", 0);
            Talk(0, "这真是一场误会。一切都是阎基那卑鄙小人所引起的，所幸这个小人已无法再作恶了，我会将这事转告给胡大侠的儿子知道。", "talkname0", 1);
            Talk(3, "你知道他儿子的下落，快带他来见我。", "talkname3", 0);
            Talk(0, "只怕他一看到你就想拼命。", "talkname0", 1);
            Talk(3, "其实我心中有个遗憾，当年我砍到胡兄手臂时，我同时也被胡兄的后着踢倒在地，只因我剑上被喂上剧毒，胡兄才会毒发死亡。所以到底是何者的功夫高明，一直没有答案。今天我知道胡家有后，我很高兴。但我更希望他能学好胡家刀法，把我打败，让胡家刀法发扬光大，那我对他爹也有个交待。届时你想要的《飞狐外传》一书也将送上。麻烦你转告他，等他准备好了，可随时来找我。", "talkname3", 0);
do return end;
