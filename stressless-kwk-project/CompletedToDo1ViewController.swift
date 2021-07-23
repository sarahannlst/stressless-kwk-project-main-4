//
//  CompletedToDo1ViewController.swift
//  stressless-kwk-project
//
//  Created by  Scholar on 7/21/21.
//

import UIKit

class CompletedToDo1ViewController: UIViewController {
    var previousVC = ToDoListTableViewController()
    var selectedToDo : ToDoCD?
    @IBOutlet weak var label1: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        label1.text = selectedToDo?.name

        // Do any additional setup after loading the view.
    }
    
    @IBAction func completeTapped(_ sender: Any) {
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
            if let theToDo = selectedToDo {
              context.delete(theToDo)
              navigationController?.popViewController(animated: true)
            }
          }
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
