//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by CarlosDeLaRocha on 7/31/17.
//  Copyright © 2017 Carlos de la Rocha. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    @IBOutlet weak var Tabla: UITableView!
    
    //VAriable que contiene listado de cosas
    //var emojis = ["😀","🤠","😊","🇲🇽","😎","🤤","💩","🖕🏼"]
    
    //PArte 2 variable de emojis 2.0
    var emojis: [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Función que activa la fuente de información
        Tabla.dataSource = self
        Tabla.delegate = self
        
        //Parte 2 hacer que el listado de los emojis se cree
        //variable = funcion
        emojis = makeEmojiArray()
    }
    
    //Tamaño de la tabla dependiendo de lo que contenga
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    //Lo que contiene la tabla dependiendo de la variable de listado
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        //Parte 2 Se crea un error en el codigo:
        //cell.textLabel?.text = emojis[indexPath.row]
        //Se arregla así:
        let emoji = emojis[indexPath.row]
        //Variable obtenida por el objeto
        //ahora esta obteniendola por una variable = al la del objeto
        cell.textLabel?.text = emoji.stringEmoji
        return cell
    }
    
    //Función que permite enviar de un lado a otro en la interfaz
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //Quitar seleción del ultimo
        tableView.deselectRow(at: indexPath, animated: true)
        //Pasar identifiador de emoji
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //print(sender) <- Verificar si esta funcionando
        
        //Codigo con el nombre "DefinitionView controller echo un objeto"
        let DefSend = segue.destination as! DefinitionViewController
        //Parte 1
        //DefSend.emoji = sender as! String
        
        //Parte 2
        DefSend.emoji = sender as! Emoji
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recrea∫ted.
    }
    
    // Parte 2 clases crear un emoji basado en las clases
    func makeEmojiArray() -> [Emoji]{
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😀"
        emoji1.defEmoji = "😀"
        emoji1.category = "😀"
        emoji1.birth = "😀"
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "🤠"
        emoji2.defEmoji = "🤠"
        emoji2.category = "🤠"
        emoji2.birth = "🤠"
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "😊"
        emoji3.defEmoji = "😊"
        emoji3.category = "😊"
        emoji3.birth = "😊"
        
        return [emoji1, emoji2, emoji3]
    }
    
}

