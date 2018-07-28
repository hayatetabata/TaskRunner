//
//  RunnerController.swift
//  TaskRunner
//
//  Created by 田畑颯 on 2018/07/28.
//  Copyright © 2018年 田畑颯. All rights reserved.
//

import UIKit

class RunnerController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet var PickerView: UIPickerView!
    
    let dataList = ["ios", "android"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        PickerView.delegate = self
        PickerView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return dataList.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return dataList[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print(dataList[row])
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
