//
//  SecondViewController.swift
//  ResultPage
//
//  Created by Muharrem Köroğlu on 26.09.2022.
//

import UIKit

class SecondViewController: UIViewController {

    
    @IBOutlet weak var secondPageLabel: UILabel!
    
    @IBOutlet weak var uniLogo: UIImageView!
    
    var studentName = ""
    var uniArray = ["boun","itü","odtü","ku","saü","ytü","iü"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        secondPageLabel.text = "Congratulations,\(studentName)"
        changePic()
       
    }
    
    func changePic () {
        let random = Int(arc4random_uniform(UInt32(uniArray.count)))
        uniLogo.image = UIImage(named: "\(uniArray[random])")
    }
    
    

}
