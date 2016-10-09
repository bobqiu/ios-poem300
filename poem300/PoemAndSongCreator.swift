import UIKit


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

func createPoemAndSongs() -> Array<PoemAndSong> {

    var pnsArr: [PoemAndSong] = []
    
    
    let p1 = PoemAndSong(id: 1, type: 1, name: "相思", author: "王維", content: "紅豆生南國，\n春來發幾枝，\n願君多采擷，\n此物最相思。")
    
    pnsArr.append(p1)
    
    let p2 = PoemAndSong(id: 2, type: 1, name: "夜思", author: "李白", content: "床前明月光，\n疑是地上霜。\n舉頭望明月，\n低頭思故鄉。")

    pnsArr.append(p2)

    
    let p3 = PoemAndSong(id: 3, type: 1, name: "清明", author: "杜牧", content: "清明時節雨紛紛，路上行人欲斷魂。借問酒家何處有，牧童遙指杏花村。")
    pnsArr.append(p3)
    
    let p4 = PoemAndSong(id: 4, type: 2, name: "娃娃國", author: "", content: "娃娃國 娃娃兵 金髮藍眼睛 娃娃國王鬍鬚長 騎馬出王宮 娃娃兵 在演習 提防敵人攻 機關槍答答答 原子砲轟轟轟")
    pnsArr.append(p4)
    
    let p5 = PoemAndSong(id: 5, type: 2, name: "三輪車 ", author: "", content: "三輪車 跑的快 上面坐著老太太 要五毛 給一塊 你說奇怪不奇怪")
    pnsArr.append(p5)

    let p6 = PoemAndSong(id: 6, type: 2, name: "小星星", author: "", content: "一閃一閃亮晶晶 滿天都是小星星 掛在天上放光明 好像許多小眼睛 一閃一閃亮晶晶 滿天都是小星星")
    pnsArr.append(p6)
    
    
    
    let p7 = PoemAndSong(id: 7, type: 1, name: "旅宿", author: "杜牧", content: "旅館無良伴，凝情自悄然。寒燈思舊事，斷雁警愁眠。遠夢歸侵曉，家書到隔年。滄江好煙月，門繫釣魚船。")
    pnsArr.append(p7)

    let p8 = PoemAndSong(id: 8, type: 1, name: "歲暮歸南山", author: "孟浩然", content: "北闕休上書，南山歸敝廬。不才明主棄，多病故人疏。白髮催年老，青陽逼歲除。永懷愁不寐，松月夜窗虛。")
    pnsArr.append(p8)
    
    
    let p9 = PoemAndSong(id: 9, type: 1, name: "溪居", author: "柳宗元", content: "久為簪組束，幸此南夷謫。閒依農圃鄰，偶似山林客。曉耕翻露草，夜傍響谿石。來往不逢人，長歌楚天碧。")
    pnsArr.append(p9)
    
    
    let p10 = PoemAndSong(id: 10, type: 1, name: "望嶽", author: "杜甫", content: "岱宗夫如何，齊魯青未了。\n造化鍾神秀，陰陽割昏曉。\n盪胸生曾雲，決眥入歸鳥。\n會當凌絕頂，一覽眾山小。")
    pnsArr.append(p10)
    
    return pnsArr
}

