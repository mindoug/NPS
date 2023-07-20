//
//  ListDetailTableViewController.swift
//  NPS
//
//  Created by Mindy Douglas on 6/3/23.
//

import UIKit

class ListDetailTableViewController: UITableViewController {
    
    var listItem: ListItem?
    
    @IBOutlet weak var saveButton: UIBarButtonItem!
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var isCheckedButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateSaveButtonState()
    }
    
    func updateSaveButtonState() {
        let shouldEnableSaveButton = titleTextField.text?.isEmpty == false
        saveButton.isEnabled = shouldEnableSaveButton
    }
    
    @IBAction func textEditingChanged(_ sender: UITextField) {
        updateSaveButtonState()
    }

    @IBAction func isCheckedButtonTapped(_ sender: UIButton) {
        isCheckedButton.isSelected.toggle()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        guard segue.identifier == "saveUnwind" else {
            return
        }
        
        let title = titleTextField.text!
        let isChecked = isCheckedButton.isSelected
        listItem = ListItem(title: title, isChecked: isChecked)
    }
}
