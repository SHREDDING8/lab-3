//
//  ViewController.swift
//  lab 3
//
//  Created by SHREDDING on 24.06.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var circleAboveNameView: UIView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var universityLabel: UILabel!
    
    @IBOutlet weak var cityLabel: UILabel!
    
    override func loadView() {
        super.loadView()
        print("loadView")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad")
        self.circleAboveNameView.layer.cornerRadius = self.circleAboveNameView.frame.width / 2 + 10
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear")
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("viewDidAppear")
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("viewWillDisappear")
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("viewDidDisappear")
    }
    
    
    @IBAction func universityChangeTap(_ sender: Any) {
        
        let alert = UIAlertController(title: "Enter new value", message: nil, preferredStyle: .alert)
        
        let done = UIAlertAction(title: "Done", style: .default) { _ in
            self.universityLabel.text = alert.textFields![0].text
        }
        let cancel = UIAlertAction(title: "Cancel", style: .cancel)
        
        alert.addTextField()
        alert.addAction(done)
        alert.addAction(cancel)
        self.present(alert, animated: true)
    }
    
    @IBAction func changeCityTap(_ sender: Any) {
        let alert = UIAlertController(title: "Enter new value", message: nil, preferredStyle: .alert)
        
        let done = UIAlertAction(title: "Done", style: .default) { _ in
            self.cityLabel.text = alert.textFields![0].text
        }
        let cancel = UIAlertAction(title: "Cancel", style: .cancel)
        
        alert.addTextField()
        alert.addAction(done)
        alert.addAction(cancel)
        self.present(alert, animated: true)
    }
    
    

}


extension ViewController:UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        if textField == self.nameTextField{
            if (textField.text?.split(separator: " ").count)! > 1{
                let name = textField.text?.split(separator: " ")[0]
                let secondNmae = textField.text?.split(separator: " ")[1]
                self.nameLabel.text = "\(String(describing: name!.first!))\(String(describing: secondNmae!.first!))"
            }else if textField.text?.split(separator: " ").count == 1{
                let name = textField.text?.split(separator: " ")[0]
                self.nameLabel.text = "\(String(describing: name!.first!))"
            }else{
                self.nameLabel.text = ""
            }
        }
        
        return true
    }
}

