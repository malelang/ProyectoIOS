//
//  RegistroUsuarioController.swift
//  PrettyPets
//
//  Created by Alejandra Landinez on 11/7/17.
//  Copyright © 2017 LordBoxen. All rights reserved.
//

import Foundation

import UIKit

class RegistroUsuarioController: UIViewController {
    
    @IBOutlet weak var Nombres: UIStackView!
    @IBOutlet weak var Direccion: UITextField!
    @IBOutlet weak var Numero: UITextField!
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var edad: UITextField!
    @IBOutlet weak var pickerEdad: UIPickerView!
    @IBOutlet weak var btnGenero: DLRadioButton!
    
    var edades = ["18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40","41","42","43","44","45","46","47","48","49","50"]
    
    var genero : String = ""
    
    @IBAction func defineGender(_ sender: DLRadioButton) {
        if sender.tag == 1 {
            genero = "Hombre"
        }else {
            genero = "Mujer"
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    public func numberOfComponents(in pickerView: UIPickerView) -> Int{
        return 1
    }
    
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        
        return edades.count
        
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        self.view.endEditing(true)
        return edades[row]
        
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        self.edad.text = self.edades[row]
        self.pickerEdad.isHidden = true
        
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        
        if textField == self.edad {
            self.pickerEdad.isHidden = false
            textField.endEditing(true)
        }
        
    }
    
    @IBAction func goToRegister(_ sender: UIButton) {
    }
    
}