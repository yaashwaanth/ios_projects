//
//  ViewController.swift
//  StudentDatabaseApp
//
//  Created by G Yashwanth Sharma on 26/03/25.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var studentNamesLabel: UILabel!
    
    @IBOutlet weak var studentNameTextField: UITextField!
    
    var students: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        studentNamesLabel.frame = CGRect(x: 20, y: 72, width: view.frame.width - 40, height: studentNamesLabel.frame.height * 3)
        
        print("check")
    }


    @IBAction func submitButtonTapped(_ sender: Any) {
        guard let studentName = studentNameTextField.text
        else{
            return
        }
        
        if studentName == "" {
            return
        }
        
        if studentName.count < 3 {
            return
        }
        
        students.append(studentName)
        
        var interimStudents = ""
        for student in students{
            interimStudents = interimStudents + " " + student
        }
        studentNamesLabel.text = interimStudents
        studentNameTextField.text = ""
    }
}

