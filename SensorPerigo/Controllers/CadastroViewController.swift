//
//  CadastroViewController.swift
//  SensorPerigo
//
//  Created by Danielle Gomes on 12/05/2018.
//  Copyright © 2018 CESAR School. All rights reserved.
//

import UIKit

class CadastroViewController: UIViewController {

    @IBOutlet weak var tfContato1: UITextField!
    @IBOutlet weak var tfNum1: UITextField!
    
    @IBOutlet weak var tfContato2: UITextField!
    @IBOutlet weak var tfNum2: UITextField!
    
    @IBOutlet weak var tfContato3: UITextField!
    @IBOutlet weak var tfNum3: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
    
    
    @IBAction func saveContatos(_ sender: UIButton) {
        let contato1 = tfContato1.text!
        let num1 = tfNum1.text!
        
        let contato2 = tfContato2.text!
        let num2 = tfNum2.text!
        
        let contato3 = tfContato3.text!
        let num3 = tfNum3.text!
        
        if !contato1.isEmpty && !num1.isEmpty && !contato2.isEmpty && !num2.isEmpty && !contato3.isEmpty && !num3.isEmpty{
            
            //persiste na chave associada o valor da variavel contato1 e número1
            UserDefaults.standard.set(contato1, forKey: "contato1Key")
            UserDefaults.standard.set(num1, forKey: "num1Key")
            
            //persiste na chave associada o valor da variavel contato2 e número2
            UserDefaults.standard.set(contato2, forKey: "contato2Key")
            UserDefaults.standard.set(num2, forKey: "num2Key")
            
            //persiste na chave associada o valor da variavel contato3 e número3
            UserDefaults.standard.set(contato3, forKey: "contato3Key")
            UserDefaults.standard.set(num3, forKey: "num3Key")
            
            //faz voltar para a tela principal
            navigationController?.popViewController(animated: true)
            
            
        }
        
        
    }
    
    

}
