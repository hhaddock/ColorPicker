//
//  ColorViewController.swift
//  Color Picker
//
//  Created by Hayden Haddock on 11/16/17.
//  Copyright © 2017 Tech Innovator. All rights reserved.
//

import UIKit

class ColorViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var colorLabel: UILabel!
    @IBOutlet weak var colorPicker: UIPickerView!
    
    var colors = [Color(colorName: "red", bgColor: UIColor.red),
                  Color(colorName: "orange", bgColor: UIColor.orange),
                  Color(colorName: "yellow", bgColor: UIColor.yellow),
                  Color(colorName: "green", bgColor: UIColor.green),
                  Color(colorName: "blue", bgColor: UIColor.blue),
                  Color(colorName: "purple", bgColor: UIColor.purple),
                  Color(colorName: "brown", bgColor: UIColor.brown)]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colors.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colors[row].colorName
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        colorLabel.text = colors[row].colorName
        self.view.backgroundColor = colors[row].bgColor
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorLabel.text = colors[0].colorName
        self.view.backgroundColor = colors[0].bgColor
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
