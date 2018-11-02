//
//  AddTaskController.swift
//  todo-app
//
//  Created by Dulval on 02/11/18.
//  Copyright © 2018 Dulval. All rights reserved.
//

import UIKit

protocol AddTask {
    func addTask(name: String)
}

class AddTaskController: UIViewController {

    var delegate: AddTask?
    @IBOutlet weak var taskNameOutlet: UITextField!
    
    @IBAction func createTask(_ sender: Any) {
        if taskNameOutlet.text != "" {
            delegate?.addTask(name: taskNameOutlet.text!)
            navigationController?.popViewController(animated: true)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
