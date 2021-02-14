import Foundation

struct Player {
   let number: Int
   let name: String
}

struct Team {
   let name: String
   let squad: [Player]
   
   // 여기에서 서브스크립트를 구현해 주세요.
    subscript(number: Int) -> Player? {
        for p in squad {
            if p.number == number {
                return p
            }
        }
        return nil
    }
    
    subscript(name: String) -> Player? {
        for p in squad {
            if p.name == name {
                return p
            }
        }
        return nil
    }
}

// 아래에 있는 코드는 수정하지 마세요.
let firstTeam = [
   Player(number: 1, name: "Hugo Lloris"),
   Player(number: 3, name: "Danny Rose"),
   Player(number: 4, name: "Toby Alderweireld"),
   Player(number: 5, name: "Jan Vertonghen"),
   Player(number: 7, name: "Heung-Min Son"),
   Player(number: 10, name: "Harry Kane"),
   Player(number: 12, name: "Victor Wanyama"),
   Player(number: 20, name: "Dele Alli"),
   Player(number: 23, name: "Christian Eriksen"),
   Player(number: 33, name: "Ben Davies")
]
let tot = Team(name: "Tottenham Hotspur", squad: firstTeam)

var name: String?
var number: Int?

if let player = tot[7] {
   name = player.name
}

if let player = tot["David de Gea"] {
   number = player.number
}

print(name == .some("Heung-Min Son") && number == nil)
