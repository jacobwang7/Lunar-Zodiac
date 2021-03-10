//
//  ViewController.swift
//  Lunar Zodiac
//
//  Created by Jacob Wang on 2/8/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var yearLabel: UILabel!
    @IBOutlet weak var animalImageView: UIImageView!
    
    var currentYear = 2021
    var currentImageNumber = 1
    override func viewDidLoad() {
        super.viewDidLoad()
        yearLabel.text = "\(currentYear)"
        animalImageView.image = UIImage (named: "image\(currentImageNumber)")
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonPressed(sender: UIButton) {
        currentImageNumber = currentImageNumber + sender.tag
        currentYear += sender.tag
        if currentImageNumber < 0 {
            currentImageNumber = 11
        }
        if currentImageNumber > 11 {
            currentImageNumber = 0
        }
        yearLabel.text = "\(currentYear)"
        animalImageView.image = UIImage(named: "image\(currentImageNumber)")
    }

}

