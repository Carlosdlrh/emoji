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
    var emojis = ["😀","🤠","😊","🇲🇽","😎","🤤","💩","🖕🏼"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Función que activa la fuente de información
        Tabla.dataSource = self
        Tabla.delegate = self
    }
    
    //Tamaño de la tabla dependiendo de lo que contenga
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    //Lo que contiene la tabla dependiendo de la variable de listado
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = emojis[indexPath.row]
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
        DefSend.emoji = sender as! String
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recrea∫ted.
    }


}

