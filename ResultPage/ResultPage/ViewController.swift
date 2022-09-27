//
//  ViewController.swift
//  ResultPage
//
//  Created by Muharrem Köroğlu on 26.09.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var homeLabel: UILabel!
    @IBOutlet weak var nameTextFiedl: UITextField!
    
    var userName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
    
    @IBAction func learnButton(_ sender: Any) {
        
        if nameTextFiedl.text != "" {
            userName = nameTextFiedl.text!
            performSegue(withIdentifier: "toSecondVC", sender: nil)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC" {
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.studentName = userName
        }
    }
    


}

