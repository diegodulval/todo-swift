//
//  TaskCell.swift
//  todo-app
//
//  Created by Dulval on 02/11/18.
//  Copyright © 2018 Dulval. All rights reserved.
//

import UIKit

protocol ChangeButton {
    func changeButton(checked: Bool, index: Int)
}

class TaskCell: UITableViewCell {
    
    @IBOutlet weak var checkBoxOutlet: UIButton!
    @IBOutlet weak var taskNameLabel: UILabel!

    var delegate: ChangeButton?
    var indexP: Int?
    var tasks: [Task]?

    @IBAction func clickButton(_ sender: Any) {
        if tasks![indexP!].checked {
            delegate?.changeButton(checked: false, index: indexP!)
        }else {
            delegate?.changeButton(checked: true, index: indexP!)
        }
    }
}
