//
//  InterfaceController.swift
//  FrasesDoDia WatchKit Extension
//
//  Created by Eduarda Mello on 03/08/19.
//  Copyright © 2019 Eduarda Mello. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBAction func buttonNovaFrase() {
        var frases = [
            "As vezes as coisas demoram, mas acontecem. O importante é saber esperar e não perder a fé!",
            "Cuidado com as voltas que o mundo dá. Hoje você lança as palavras, amanhã sente o efeito delas.",
            "Cada dia é uma chance para ser melhor que ontem.",
            "Em um mundo feito de aparências, feliz é aquele que é feito de verdades.",
            "Cada escolha, uma oportunidade. Cada queda, um aprendizado. Cada atitude, uma consequência.",
            "Se for pra ser um tanto faz na vida de alguém, eu prefiro não ser nada.",
            "Nada é tão nosso, quanto nossos sonhos.",
            "A beleza até atrai, mas a reciprocidade encanta bem mais.",
            "A escolha certa é a que acalma o coração."
        ]
        
        let numeroAleatorio = arc4random_uniform(9)
        let frase = frases [Int(numeroAleatorio)]
        
        lblFrase.setText(frase)
        
    }
    
    @IBOutlet weak var lblFrase: WKInterfaceLabel!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
