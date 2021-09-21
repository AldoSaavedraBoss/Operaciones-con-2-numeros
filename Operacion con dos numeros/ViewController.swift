//
//  ViewController.swift
//  Operacion con dos numeros
//
//  Created by Mac20 on 19/09/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TFNumer1: UITextField!
    
    @IBOutlet weak var TFNumero2: UITextField!
    
    @IBOutlet weak var LBRespuesta: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func Operacion(_ sender: UISegmentedControl) {
        let num1:Int = Int(TFNumer1.text!) ?? 0
        let num2:Int = Int(TFNumero2.text!) ?? 0
        
        switch sender.selectedSegmentIndex {
        case 0:
            LBRespuesta.text = "Respuesta: \(num1 + num2)"
        case 1:
            LBRespuesta.text = "Respuesta: \(num1 - num2)"
        case 2:
            LBRespuesta.text = "Respuesta: \(num1 * num2)"
        case 3:
            if num1 == 0 || num2 == 0 {
                LBRespuesta.text = "Los numeros no pueden ser 0 o estar vacios"
            }
            LBRespuesta.text = "Respuesta: \(num1 / num2)"
        default:
            LBRespuesta.text = "Error"
        }
    }
    
}

