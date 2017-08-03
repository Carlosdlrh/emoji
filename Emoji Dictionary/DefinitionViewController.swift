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
    
    //Parte 2 - Objetos
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var yearLabel: UILabel!
    
    /*Parte1
    var emoji = "Error"
    var a = "Error"
    */
    var emoji = Emoji()
    var a = "Error"
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //imprimir el emoji y cambiar la etiqueta
        //Imprimir
        //print("emoji selecionado:",emoji)
        //Etiqueta
        /*
        emojiLabel.text = emoji
        */
        
        print("emoji selecionado:",emoji.category)
        //Parte 2 simplificar codigo de "ifs" trayendo solo la informacion del objeto
        emojiLabel.text = emoji.stringEmoji
        definition.text = emoji.defEmoji
        categoryLabel.text = "Categoria: \(emoji.category)"
        yearLabel.text = "Fecha de creación: \(emoji.birth)"
        
        //Definición
        /*
        switch emoji {
        case "🤠":
            definition.text = "Hola vaquero"
            categoryLabel.text = "categoría: smiley"
            yearLabel.text = "Año: 2011"
        case "😀":
            definition.text = "Hola Feliz"
            categoryLabel.text = "categoría: smiley"
            yearLabel.text = "Año: 2010"
        case "😊":
            definition.text = "Hola Happy"
            categoryLabel.text = "categoría: smiley"
            yearLabel.text = "Año: 2010"
        case "🇲🇽":
            definition.text = "Hola México"
            categoryLabel.text = "categoría: Banderas"
            yearLabel.text = "Año: 2012"
        default:
            definition.text = a
        }
        */
        
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
