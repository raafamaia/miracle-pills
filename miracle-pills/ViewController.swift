//
//  ViewController.swift
//  miracle-pills
//
//  Created by R. Maia on 09/10/16.
//  Copyright © 2016 RM. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var btnStatePicker: UIButton!
    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var lblCountry: UILabel!
    @IBOutlet weak var txtFieldCOuntry: UITextField!
    @IBOutlet weak var lblZip: UILabel!
    @IBOutlet weak var txtFieldZip: UITextField!
    @IBOutlet weak var imgSucces: UIImageView!
    
    let states = ["São Paulo", "Rio de Janeiro", "Acre", "Minas Gerais"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.delegate = self
        statePicker.dataSource = self
    }

    @IBAction func btnChooseStatePressed(_ sender: AnyObject) {
        toggle(isHidden: true)
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        btnStatePicker.setTitle(states[row], for: UIControlState.normal)
        toggle(isHidden: false)
    }
    
    func toggle(isHidden: Bool) {
        statePicker.isHidden = !isHidden
        lblCountry.isHidden = isHidden
        txtFieldCOuntry.isHidden = isHidden
        lblZip.isHidden = isHidden
        txtFieldZip.isHidden = isHidden
    }
    @IBAction func btnBuyNowPressed(_ sender: AnyObject) {
        imgSucces.isHidden = false
    }
}

