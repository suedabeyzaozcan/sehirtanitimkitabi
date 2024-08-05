//
//  DetailsViewController.swift
//  SehirTanıtımKitabi
//
//  Created by Sueda Beyza Özcan on 25.07.2024.
//

import UIKit

class DetailsViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var sehirLabel: UILabel!
    
    @IBOutlet weak var bolgeLabel: UILabel!
    
    var secilenSehir : Sehir?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sehirLabel.text = secilenSehir?.isim
        bolgeLabel.text = secilenSehir?.bolge
        imageView.image = secilenSehir?.gorsel
    }
  
}
