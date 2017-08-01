//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by CarlosDeLaRocha on 8/1/17.
//  Copyright © 2017 Carlos de la Rocha. All rights reserved.
//
//  Creado para la siguiente pagina
//  Recivira toda la información del menú
//

import UIKit

class DefinitionViewController: UIViewController {
    
    //Parte 1
    //Etiquetas y variables
    
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var definition: UILabel!
    
    var emoji = "Error"
    var a = "Error"
    
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //imprimir el emoji y cambiar la etiqueta
        //Imprimir
        print("emoji selecionado:",emoji)
        //Etiqueta
        emojiLabel.text = emoji
        
        //Definición
        
        switch emoji {
        case "🤠":
            definition.text = "Hola vaquero"
        case "😀":
            definition.text = "Hola Feliz"
        case "😊":
            definition.text = "Hola Happy"
        case "🇲🇽":
            definition.text = "Hola México"
        default:
            definition.text = a
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // Nada importante ----------------------

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
