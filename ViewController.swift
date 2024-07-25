//
//  ViewController.swift
//  SehirTanıtımKitabi
//
//  Created by Sueda Beyza Özcan on 25.07.2024.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    
    @IBOutlet weak var TableView: UITableView!
    
    var sehirDizisi = [Sehir]()
    var kullaniciSecimi : Sehir?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Şehirler
        let istanbul = Sehir(isim: "İstanbul", bolge: "Marmara", gorsel: UIImage(named: "istanbul")!)
        
        let izmir = Sehir(isim: "İzmir", bolge: "Ege", gorsel: UIImage(named: "izmir")!)
        
        let kahramanmaras = Sehir(isim: "Kahramanmaraş", bolge: "Akdeniz", gorsel: UIImage(named: "kahramanmaras")!)
        
        let antalya = Sehir(isim: "Antalya", bolge: "Akdeniz", gorsel: UIImage(named: "antalya")!)
        
        let ankara = Sehir(isim: "Ankara", bolge: "İçanadolu", gorsel: UIImage(named: "ankara")!)
        
        sehirDizisi = [istanbul, izmir, kahramanmaras, antalya, ankara]
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sehirDizisi.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = sehirDizisi[indexPath.row].isim
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        kullaniciSecimi = sehirDizisi[indexPath.row]
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "toDetailsVC" {
            let destinationVC = segue.destination as! DetailsViewController
            destinationVC.secilenSehir = kullaniciSecimi
            
        }
    }
}
    
