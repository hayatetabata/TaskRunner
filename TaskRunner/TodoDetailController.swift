//
//  TodoDetailController.swift
//  TaskRunner
//
//  Created by 田畑颯 on 2018/08/20.
//  Copyright © 2018年 田畑颯. All rights reserved.
//

import UIKit

class TodoDetailController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("load")
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func back(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
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
