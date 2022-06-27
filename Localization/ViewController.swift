//
//  ViewController.swift
//  Localization
//
//  Created by Gokul Nair on 27/06/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var greetingsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greetingsLabel.text = "Hello".localized()
    }


}

//MARK: - Extension for Localization
extension String {
    func localized() -> String {
        return NSLocalizedString(self, tableName: "Localizable", bundle: .main, value: self, comment: self)
    }
}

