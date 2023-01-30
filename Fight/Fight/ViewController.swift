//
//  ViewController.swift
//  Fight
//
//  Created by Misha Agaew on 30.01.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        class Damage {
            var type: String
            var amount: Double
            init (type: String) {
                self.type = type
                self.amount = Double.random (in: 1...10)
            }
        }

        class Fighter {
            var name: String
            init(name: String ) {
                self.name = name }
                func fight () -> Damage {
                    fatalError("должен override fight() method")
                }
        }

        class Mage: Fighter {
            override func fight() -> Damage {
                return Damage(type: "Ice")
            }
        }

        class Druid: Fighter {
            override func fight() -> Damage {
                return Damage(type: "Wasps")
            }
        }
        class Berserk: Fighter {
            override func fight() -> Damage {
                return Damage(type: "Cuts")
            }
        }

        class Arena {
            static func battle (player1: Fighter, player2: Fighter, player3: Fighter) {
                let damage1 = player1.fight()
                let damage2 = player2.fight()
                let damage3 = player3.fight()
                if damage1.amount > damage2.amount && damage1.amount > damage3.amount {
                    print("\(player1.name) win")
                    print("Победил с помощью: \(damage1.type)")
                    print ("Его счастливое число: \(damage1.amount)")
                    print ("Числа проигравших: \(damage2.amount),")
                    print(damage3.amount)
                } else if damage2.amount > damage1.amount && damage2.amount > damage3.amount {
                    print("\(player2.name) win")
                    print("Победила с помощью: \(damage2.type)")
                    print ("Ее счастливое число: \(damage2.amount)")
                    print ("Числа проигравших: \(damage1.amount),")
                    print (damage3.amount)
                } else if damage3.amount > damage1.amount && damage3.amount > damage2.amount {
                    print("\(player3.name) win")
                    print("Победила с помощью: \(damage3.type)")
                    print ("Ее счастливое число: \(damage3.amount)")
                    print ("Числа проигравших: \(damage1.amount),")
                    print (damage2.amount)
                }
        }
        }
        let mage = Mage (name: "Barragan")
        let berserk = Berserk (name: "Tohka")
        let druid = Druid (name: "Conan")

        Arena.battle (player1: mage, player2: berserk, player3: druid)


    }


}

