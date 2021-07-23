//
//  WritePostViewController.swift
//  stressless-kwk-project
//
//  Created by Fatima Carmona on 7/22/21.
//

import UIKit

class WritePostViewController: UIViewController {
    
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var startWriting: UITextField!
    @IBOutlet weak var typeHere: UITextField!
    var postText = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func postButton(_ sender: Any) {
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showBlog"{
          let destinationController = segue.destination as! SeePostViewController
          destinationController.finalPost = startWriting.text!
        }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
}
