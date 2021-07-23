//
//  AddToDoViewController.swift
//  stressless-kwk-project
//
//  Created by  Scholar on 7/21/21.
//

import UIKit

class AddToDoViewController: UIViewController {
    var previousVC = ToDoListTableViewController()

    @IBOutlet weak var titleTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func addTapped(_ sender: Any) {
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {

          // we are creating a new ToDoCD object here, naming it toDo
          let toDo = ToDoCD(entity: ToDoCD.entity(), insertInto: context)

          // if the titleTextField has text, we will call that text titleText
          if let titleText = titleTextField.text {
              // we will take the titleText and assign that value to toDo.name
              // this .name and .important came from the attributes you typed in on the Core Data page!
              toDo.name = titleText
//              toDo.important = importantSwitch.isOn
          }

          try? context.save()

          navigationController?.popViewController(animated: true)
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
