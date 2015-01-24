//
//  FilmesTableViewController.swift
//  Biblioteca
//
//  Copyright (c) 2015 Example. All rights reserved.
//

import UIKit

class FilmesTableViewController: UITableViewController {

    private var filmesArr = ["2012", "Avatar", "Thor", "Underworld"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func visualizarFilme(sender: AnyObject) {
        performSegueWithIdentifier("filmeParaDetalheSegue", sender: sender)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var vc = segue.destinationViewController as DetalheFilmeViewController
        
        if let i = sender?.tag {
            vc.nomeFilme = filmesArr[i]
        }
        
    }
    
    
}
