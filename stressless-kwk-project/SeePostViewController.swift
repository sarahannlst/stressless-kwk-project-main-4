//
//  SeePostViewController.swift
//  stressless-kwk-project
//
//  Created by Fatima Carmona on 7/22/21.
//

import UIKit

class SeePostViewController: UIViewController {
    
    @IBOutlet weak var label1: UILabel!
    //label1
    
    @IBOutlet weak var textF1: UITextField!
    //textF1
    
    var finalPost = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        label1.text = finalPost

        // Do any additional setup after loading the view.
    }
    
    @IBAction func button2(_ sender: Any) {
        label1.isHidden = false
    }
    //button2
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
