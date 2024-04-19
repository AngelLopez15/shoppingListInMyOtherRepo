//
//  ListViewController.swift
//  shoppingListXIB
//
//  Created by Diplomado on 13/04/24.
//

import UIKit

class ListViewController: UIViewController {
    @IBOutlet weak var textBox: UITextView!
    var textListShoppingCart: String? = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        textBox.text = textListShoppingCart
        // Do any additional setup after loading the view.
    }

}
