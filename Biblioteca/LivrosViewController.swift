//
//  ViewController.swift
//  Biblioteca
//
//  Copyright (c) 2015 Example. All rights reserved.
//

import UIKit

class LivrosViewController: UIViewController, DetalheLivroViewControllerDelegate {

    @IBOutlet weak var livroFavoritoLabel: UILabel!
    
    private var livrosArr = ["Futebol - Uma janela para o Brasil",
        "A terra dos sonhos",
        "Manga",
        "Como se faz"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func visualizarLivro(sender: UIButton) {
        performSegueWithIdentifier("livroParaDetalheSegue", sender: sender)
    }

    // MARK: - Navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        //pega uma referência pra a próxima viewController através da propriedade destinationViewController da segue
        
        var vc = segue.destinationViewController as DetalheLivroViewController
        
        //pega a TAG do botão que executou a segue e a utiliza como índice do array para recuperar o nome do livro
        if let i = sender?.tag {
            
            //passa para a propriedade da próxima VC, o nome do livro do array
            vc.nomeLivro = livrosArr[i]
            vc.delegate = self
        }
    }
    
    func livroFavoritado(livro: String) {
        
        livroFavoritoLabel.text = livro
    }

}







