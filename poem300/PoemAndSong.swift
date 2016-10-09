import UIKit

class PoemAndSong {

    var id: Int
    var author: String?
    var name : String?
    var content: String?
    var type: Int
    
    init(id: Int, type: Int, name: String?, author:String?,content: String?) {
        self.id = id
        self.type = type
        self.name = name
        self.author = author
        self.content = content
    }
}
