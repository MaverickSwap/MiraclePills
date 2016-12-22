//
//  ViewController.swift
//  MiraclePills
//
//  Created by Swap on 16/12/16.
//  Copyright © 2016 Swap. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource  {

    @IBOutlet weak var stateBtn: UIButton!
    @IBOutlet weak var statePicker: UIPickerView!
    
    @IBOutlet weak var buyNowBtn: UIButton!
    let states = ["New York", "California", "Boston", "New Orleans", "Washington DC"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        statePicker.dataSource = self
        statePicker.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateBtnPressed(sender: AnyObject) {
        statePicker.hidden = false
        
        for i in 14...78
        {
            view.viewWithTag(i)?.hidden = true
        }
    }
    
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
     return 1
    }

    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        stateBtn.setTitle(states[row], forState: UIControlState.Normal)
        statePicker.hidden = true
        
        for i in 14...18
        {
            view.viewWithTag(i)?.hidden = false
        }
    }
    
   
    @IBAction func buyNowBtnPressed(sender: AnyObject) {
        
        for i in 1...18
        {
            view.viewWithTag(i)?.hidden = true
        }
        view.viewWithTag(19)?.hidden = false
        
        
    }
    
    
}

