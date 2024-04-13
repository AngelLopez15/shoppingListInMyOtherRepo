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

    @IBAction func buttonSelectedOne(_ sender: UIButton) {
                sender.isSelected = !sender.isSelected
                
                // Check if the button is selected and set the image accordingly
                if sender.isSelected {
                    itemOne.setImage(UIImage(systemName: "checkmark.seal"), for: .normal)
                    itemOne.backgroundColor = UIColor.green
                    selectedStates.append(sender.titleLabel!.text ?? "");
                    print(selectedStates)
                } else {
                    // Set the default image when the button is not selected
                    itemOne.setImage(nil, for: .normal)
                    itemOne.backgroundColor = UIColor.blue
                }
    }

    @IBAction func buttonSelectedTwo(_ sender: UIButton) {
                sender.isSelected = !sender.isSelected
                
                // Check if the button is selected and set the image accordingly
                if sender.isSelected {
                    itemTwo.setImage(UIImage(systemName: "checkmark.seal"), for: .normal)
                    itemTwo.backgroundColor = UIColor.green
                    selectedStates.append(sender.titleLabel!.text ?? "");
                    print(selectedStates)
                } else {
                    // Set the default image when the button is not selected
                    itemTwo.setImage(nil, for: .normal)
                    itemTwo.backgroundColor = UIColor.blue
                }
    }
    
    @IBAction func buttonSelectedThree(_ sender: UIButton) {
                sender.isSelected = !sender.isSelected
                
                // Check if the button is selected and set the image accordingly
                if sender.isSelected {
                    itemThree.setImage(UIImage(systemName: "checkmark.seal"), for: .normal)
                    itemThree.backgroundColor = UIColor.green
                    selectedStates.append(sender.titleLabel!.text ?? "");
                    print(selectedStates)
                } else {
                    // Set the default image when the button is not selected
                    itemThree.setImage(nil, for: .normal)
                    itemThree.backgroundColor = UIColor.blue
                }
    }
    
    @IBAction func itemSelected() {
        print("Product selected!")
        let listViewController = ListViewController(nibName: "ListViewController", bundle: nil)
        
        listViewController.modalPresentationStyle = .fullScreen
        
        present(listViewController, animated: true)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
