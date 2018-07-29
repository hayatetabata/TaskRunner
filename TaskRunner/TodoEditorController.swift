//
//  TodoEditorController.swift
//  TaskRunner
//
//  Created by 田畑颯 on 2018/07/28.
//  Copyright © 2018年 田畑颯. All rights reserved.
//

import UIKit

class TodoEditorController: UIViewController {

    @IBOutlet var inputNameField: UITextField!
    @IBOutlet var inputDeadlineField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func save(_ sender: Any) {
        let name: String! = inputNameField.text
        let deadline: String? = inputDeadlineField.text
        NSLog("Save new task. name: %@", name)
        let attributes: Dictionary<String, String?> = ["name": name, "deadline": deadline]
        
        let service = TaskService();
        let task: Task = service.create(attributes: attributes as! Dictionary<String, String>)
        let next = storyboard?.instantiateViewController(withIdentifier: "Todos")
        self.present(next!, animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
