//
//  Questions.swift
//  PersonalQuiz
//
//  Created by Александр Соболев on 13.06.2022.
//

struct Question {
    let title: String
    let answers: [Answer]
    let type: ResponseType
}

struct Answer {
    let title: String
    let animal: Animal
}

enum ResponseType {
    case single
    case multiple
    case ranged
}

enum Animal: Character {
    case dog = "🐶"
    case cat = "🐱"
    case rabbit = "🐰"
    case turtle = "🐢"
    
    var definition: String {
        switch self {
        case .dog:
            return "Вам нравится быть с друзьями. Вы окружаете себя людьми, которые Вам нравятся и всегда готовы помочь"
        case .cat:
            return "Вы себе на уме. Любите гулять сами по себе. Вы цените одиночество"
        case .rabbit:
            return "Вам нравится все мягкое. Вы здоровы и полны энергии. Любите прыгать и играть"
        case .turtle:
            return "Ваша сила в мудрости. Кто понял жизнь - тот не спешит. Медленный и вдумчивый выигрывает на больших дистанциях"
        }
    }
}
