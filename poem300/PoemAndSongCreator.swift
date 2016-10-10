import UIKit


func getPoemByPoet(author: String) -> Array<PoemAndSong>{
    
    let allThings = createPoemAndSongs()
    
    var pnsArr: [PoemAndSong] = []
    
    
    pnsArr = allThings.filter{ (x) -> Bool in
        x.author == author
        }
    
    return pnsArr
    
    
}

func getPoemOrSong(type: Int) -> Array<PoemAndSong>{

    let allThings = createPoemAndSongs()
    
    var pnsArr: [PoemAndSong] = []

    if (type == 1){
        pnsArr = allThings.filter{ (x) -> Bool in
            x.type == 1
        }
    }else{
        pnsArr = allThings.filter{ (x) -> Bool in
            x.type == 2
        }

    }
    return pnsArr
}


func getPoets() -> Array<String>{
    
    let allThings: Array<PoemAndSong> = getPoemOrSong(type: 1)
    
    var theSet: Set<String> = Set<String>()
  
    for thePoem in allThings {
        theSet.insert(thePoem.author!)
    }
    let poetArray : Array<String> = Array(theSet)
    return poetArray
}



func createPoemAndSongs() -> Array<PoemAndSong> {

    var pnsArr: [PoemAndSong] = []
    
    
    let p1 = PoemAndSong(id: 1, type: 1, name: "相思", author: "王維", content: "紅豆生南國，\n春來發幾枝，\n願君多采擷，\n此物最相思。")
    
    pnsArr.append(p1)
    
    let p2 = PoemAndSong(id: 2, type: 1, name: "夜思", author: "李白", content: "床前明月光，\n疑是地上霜。\n舉頭望明月，\n低頭思故鄉。")

    pnsArr.append(p2)

    
    let p3 = PoemAndSong(id: 3, type: 1, name: "清明", author: "杜牧", content: "清明時節雨紛紛，\n路上行人欲斷魂。\n借問酒家何處有，\n牧童遙指杏花村。")
    pnsArr.append(p3)
    
    let p4 = PoemAndSong(id: 4, type: 2, name: "娃娃國", author: "", content: "娃娃國 娃娃兵 金髮藍眼睛\n 娃娃國王鬍鬚長 騎馬出王宮\n 娃娃兵 在演習 提防敵人攻\n 機關槍答答答 原子砲轟轟轟")
    pnsArr.append(p4)
    
    let p5 = PoemAndSong(id: 5, type: 2, name: "三輪車 ", author: "", content: "三輪車 跑的快\n 上面坐著老太太\n 要五毛 給一塊\n 你說奇怪不奇怪")
    pnsArr.append(p5)

    let p6 = PoemAndSong(id: 6, type: 2, name: "小星星", author: "", content: "一閃一閃亮晶晶\n 滿天都是小星星\n 掛在天上放光明\n 好像許多小眼睛\n 一閃一閃亮晶晶\n 滿天都是小星星")
    pnsArr.append(p6)
    
    
    
    let p7 = PoemAndSong(id: 7, type: 1, name: "旅宿", author: "杜牧", content: "旅館無良伴，凝情自悄然。\n寒燈思舊事，斷雁警愁眠。\n遠夢歸侵曉，家書到隔年。\n滄江好煙月，門繫釣魚船。")
    pnsArr.append(p7)

    let p8 = PoemAndSong(id: 8, type: 1, name: "歲暮歸南山", author: "孟浩然", content: "北闕休上書，南山歸敝廬。\n不才明主棄，多病故人疏。\n白髮催年老，青陽逼歲除。\n永懷愁不寐，松月夜窗虛。")
    pnsArr.append(p8)
    
    
    let p9 = PoemAndSong(id: 9, type: 1, name: "溪居", author: "柳宗元", content: "久為簪組束，幸此南夷謫。\n閒依農圃鄰，偶似山林客。\n曉耕翻露草，夜傍響谿石。\n來往不逢人，長歌楚天碧。")
    pnsArr.append(p9)
    
    
    let p10 = PoemAndSong(id: 10, type: 1, name: "望嶽", author: "杜甫", content: "岱宗夫如何，齊魯青未了。\n造化鍾神秀，陰陽割昏曉。\n盪胸生曾雲，決眥入歸鳥。\n會當凌絕頂，一覽眾山小。")
    pnsArr.append(p10)
    
    let p11 = PoemAndSong(id: 11, type: 1, name: "雜詩", author: "王維", content: "君自故鄉來，應知故鄉事。\n來日綺窗前，寒梅著花未？")
    pnsArr.append(p11)
    
    
    let p12 = PoemAndSong(id: 12, type: 1, name: "送友人", author: "李白", content: "青山橫北郭，白水繞東城。\n此地一為別，孤蓬萬里征。\n浮雲遊子意，落日故人情。\n揮手自茲去，蕭蕭班馬鳴。")
    pnsArr.append(p12)
    //王維
    
    let p13 = PoemAndSong(id: 13, type: 1, name: "留別王維", author: "孟浩然", content: "寂寂竟何待，朝朝空自歸。\n欲尋芳草去，惜與故人違。\n當路誰相假，知音世所稀。\n祗因守寂寞，還掩故園扉。")
    pnsArr.append(p13)
    
    
    
    return pnsArr
}

