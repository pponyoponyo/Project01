//
//  WriteViewController.swift
//  Ex04
//
//  Created by SWUCOMPUTER on 14/04/2019.
//  Copyright © 2019 SWUCOMPUTER. All rights reserved.
//

import UIKit

class WriteViewController: UIViewController, UITextFieldDelegate,UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet var familyPicker: UIPickerView!
    @IBOutlet var detailField: UITextField!
    
    let whoArray: [String] = ["MOM" , "DAD" , "1ST" , "2ST", "3ST","4ST"]
    let whyArray: [String] = ["NOTICE","HAVE TO DO","JUST"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return whoArray.count
        } else {
            return whyArray.count }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0 {
            return whoArray[row] }
        else {
            return whyArray[row] }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let destVC = segue.destination as!ViewController
        
        let who: String = whoArray[self.familyPicker.selectedRow(inComponent: 0)]
        let why: String = whyArray[self.familyPicker.selectedRow(inComponent: 1)]

        destVC.labelText = "WHO : " + who + "\n WHY : " + why + "\n TEXT : " + detailField.text!
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //delegate method
        textField.resignFirstResponder()
        return true }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
