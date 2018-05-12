//
//  PerfilViewController.swift
//  SensorPerigo
//
//  Created by Danielle Gomes on 12/05/2018.
//  Copyright © 2018 CESAR School. All rights reserved.
//

import UIKit

class PerfilViewController: UIViewController {

    @IBOutlet weak var tfName: UITextField!
    
    @IBOutlet weak var tfCPF: UITextField!
    
    @IBOutlet weak var tfRG: UITextField!
 
    @IBOutlet weak var scSexo: UISegmentedControl!
    
    @IBOutlet weak var tfNacionalidade: UITextField!
    
    
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
    @IBAction func saveData(_ sender: UIButton) {
        
        let name = tfName.text!
        let cpf = tfCPF.text!
        let rg = tfRG.text!
        let sexo = scSexo.titleForSegment(at: scSexo.selectedSegmentIndex)!
        let nacio = tfNacionalidade.text!
        
        if !name.isEmpty && !cpf.isEmpty && !rg.isEmpty && !sexo.isEmpty && !nacio.isEmpty{
            //persiste na chave associada o valor da variavel name
            UserDefaults.standard.set(name, forKey: "nameKey")
            
            //persiste na chave associada o valor da variavel cpf
            UserDefaults.standard.set(cpf, forKey: "cpfKey")
            
            //persiste na chave associada o valor da variavel rg
            UserDefaults.standard.set(rg, forKey: "rgKey")
            
            //persiste na chave associada o valor da variavel sexo
            UserDefaults.standard.set(sexo, forKey: "sexoKey")
            
            //persiste na chave associada o valor da variavel nacionalidade
            UserDefaults.standard.set(nacio, forKey: "nacioKey")

            //faz voltar para a tela principal
            navigationController?.popViewController(animated: true)
            
        }
        
        
    }
    
}
