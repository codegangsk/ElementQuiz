//
//  ViewController.swift
//  ElementQuiz
//
//  Created by Sophie Kim on 2020/07/08.
//  Copyright © 2020 Sophie Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    updateElement()
    }
 
    let elementList = ["Carbon", "Gold", "Chlorine", "Sodium"]
    var currentElementIndex = 0
    
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var answerLabel: UILabel!
    @IBAction func showAnswer(_ sender: UIButton) {
    
        answerLabel.text = elementList[currentElementIndex]
    }
    @IBAction func gotoNextElement(_ sender: UIButton) {
        currentElementIndex = (currentElementIndex+1)%3
        updateElement()
    }

    func updateElement() {
        answerLabel.text = "?"
        let elementName = elementList[currentElementIndex]
        let image = UIImage(named: elementName)
        imageView.image = image
    }

    
}

