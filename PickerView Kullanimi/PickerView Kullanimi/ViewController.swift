//
//  ViewController.swift
//  PickerView Kullanimi
//
//  Created by Yavuz Güner on 6.04.2022.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate,UIPickerViewDataSource {
  
    @IBOutlet weak var labelResult: UILabel!
    @IBOutlet weak var pickerView: UIPickerView!
    
    var countries = [String]()
    
    var selectedCountry:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        countries = ["Turkey", "USA", "France", "Italy","Japan","Russia","Iran","Georgia","Bulgaria","Greece","Egypt"]
        
        pickerView.delegate = self
        pickerView.dataSource = self
    }
    
    //Kaç sütun olacak. Bunu belirleriz...
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    //İçerisindeki eleman sayısı kaç olacak
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return countries.count
    }
    
    //Tek tek başlıklarını yani verileri yerleştireceğimiz metodu yazıyoruz.
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return countries[row]
    }

    //Seçilen satırın bilgisini isticez.
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        labelResult.text = countries[row]
        selectedCountry = countries[row]
        
    }

    @IBAction func showButton(_ sender: Any) {
        
        print(selectedCountry!)
    }
}

