//
//  Questions.swift
//  PersonalQuiz
//
//  Created by Александр Соболев on 13.06.2022.
//

struct Question {
    let title: String
    let type: ResponseType
    let answers: [Answer]
    
    static func getQuestions() -> [Question] {
        [
            Question(
                title: "Какую пищу вы предпочитаете? 🍕",
                type: .single,
                answers: [
                    Answer(title: "Стейк 🥩", animal: .dog),
                    Answer(title: "Рыба 🍣", animal: .cat),
                    Answer(title: "Морковь 🥕", animal: .rabbit),
                    Answer(title: "Кукуруза 🌽", animal: .turtle)
                ]
            ),
            Question(
                title: "Что вам нравится больше? 👍",
                type: .multiple,
                answers: [
                    Answer(title: "Плавать 🏊‍♂️", animal: .dog),
                    Answer(title: "Спать 😴", animal: .cat),
                    Answer(title: "Обниматься 👩‍❤️‍👨", animal: .rabbit),
                    Answer(title: "Есть 🍜", animal: .turtle)
                ]
            ),
            Question(
                title: "Любите ли вы поездки на автомобиле? 🚗",
                type: .ranged,
                answers: [
                    Answer(title: "Ненавижу 😡", animal: .cat),
                    Answer(title: "Нервничаю", animal: .rabbit),
                    Answer(title: "Не замечаю", animal: .turtle),
                    Answer(title: "Обожаю 😏", animal: .dog)
                ]
            )
        ]
    }
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
            return "Вам нравится быть с друзьями 🧍‍♂️🧍‍♀️👫 Вы окружаете себя людьми, которые Вам нравятся и всегда готовы помочь 🤝"
        case .cat:
            return "Вы себе на уме 😎 Любите гулять сами по себе 🏃‍♂️ Вы цените одиночество 🧘"
        case .rabbit:
            return "Вам нравится все мягкое ☁️ Вы здоровы и полны энергии 💪 Любите прыгать и играть ⛹️‍♂️"
        case .turtle:
            return "Ваша сила в мудрости ☝️ Кто понял жизнь - тот не спешит 💆🏻‍♀️ Медленный и вдумчивый выигрывает на больших дистанциях 👨‍🎓"
        }
    }
}

