//
//  HomeViewController.swift
//  shoppingListXIB
//
//  Created by Diplomado on 13/04/24.
//

import UIKit

class HomeViewController: UIViewController {
    @IBOutlet weak var itemOne: UIButton!
    @IBOutlet weak var itemTwo: UIButton!
    @IBOutlet weak var itemThree: UIButton!
    @IBOutlet weak var itemFour: UIButton!
    @IBOutlet weak var itemFive: UIButton!
    @IBOutlet weak var itemSix: UIButton!
    @IBOutlet weak var itemSeven: UIButton!
    @IBOutlet weak var itemEigth: UIButton!
    @IBOutlet weak var itemNine: UIButton!
    @IBOutlet weak var itemTen: UIButton!
    
    var selectedStates = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        itemOne.backgroundColor = UIColor.blue
        itemTwo.backgroundColor = UIColor.blue
        itemThree.backgroundColor = UIColor.blue
        itemFour.backgroundColor = UIColor.blue
        itemFive.backgroundColor = UIColor.blue
        itemSix.backgroundColor = UIColor.blue
        itemSeven.backgroundColor = UIColor.blue
        itemEigth.backgroundColor = UIColor.blue
        itemNine.backgroundColor = UIColor.blue
        itemTen.backgroundColor = UIColor.blue
    }
    
    @IBAction func addTocart(_ sender: UIButton) {
        print(sender.tag)
        switch sender.tag {
        case 0:
            checkItem(sender, itemOne, "apple.logo")
        case 1:
            checkItem(sender, itemTwo, "pencil.line")
        case 2:
            checkItem(sender, itemThree, "calendar")
        case 3:
            checkItem(sender, itemFour, "newspaper.fill")
        case 4:
            checkItem(sender, itemFive, "paperclip")
        case 5:
            checkItem(sender, itemSix, "trophy")
        case 6:
            checkItem(sender, itemSeven, "gym.bag")
        case 7:
            checkItem(sender, itemEigth, "medal")
        case 8:
            checkItem(sender, itemNine, "keyboard")
        case 9:
            checkItem(sender, itemTen, "magicmouse")
        default:
            return
        }
    }
    
    func checkItem (_ sender: UIButton, _ item: UIButton, _ logo: String) {
        sender.isSelected = !sender.isSelected
        let nameItem = item
        // Check if the button is selected and set the image accordingly
        if sender.isSelected {
            nameItem.setImage(UIImage(systemName: "checkmark.seal"), for: .normal)
            nameItem.backgroundColor = UIColor.green
            selectedStates.append(sender.titleLabel!.text ?? "");
            print(selectedStates)
        } else {
            // Set the default image when the button is not selected
            selectedStates = selectedStates.filter({ $0 != sender.titleLabel!.text })
            nameItem.setImage(UIImage(systemName: logo), for: .normal)
            nameItem.backgroundColor = UIColor.blue
        }
    }
    
    @IBAction func itemSelected() {
        print("Products selected!")
        let listViewController = ListViewController(nibName: "ListViewController", bundle: nil)
        
        listViewController.textListShoppingCart = selectedStates.joined(separator: ", ")
        listViewController.modalPresentationStyle = .fullScreen
        
        present(listViewController, animated: true)
    }

}
