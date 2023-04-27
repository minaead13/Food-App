//
//  DishDetailViewController.swift
//  Yummie
//
//  Created by Mina on 24/03/2023.
//

import UIKit
import ProgressHUD
class DishDetailViewController: UIViewController {
    @IBOutlet weak var dishImg: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var caloriesLbl: UILabel!
    @IBOutlet weak var DescribtiobLbl: UILabel!
    @IBOutlet weak var nameField: UITextField!
    var dish: Dish!
    override func viewDidLoad() {
        super.viewDidLoad()
        populateView()
        print(DescribtiobLbl.text)
    }
    
    private func populateView(){
        dishImg.kf.setImage(with: dish.image?.asUrl)
        titleLbl.text = dish.name
        DescribtiobLbl.text = dish.description
        caloriesLbl.text = dish.formattedCalories
    }

    
    @IBAction func PlaceOrderBtn(_ sender: Any) {
        guard let name = nameField.text?.trimmingCharacters(in: .whitespaces), !name.isEmpty else {
            ProgressHUD.showError("Please enter your name")
            return
        }
        print(name)
        ProgressHUD.show("Placing Order...")
        NetworkService.shared.placeOrder(dishId: dish.id ?? "", name: name) { (result) in
                switch result {
                case .success(_):
                    ProgressHUD.showSuccess("Your order has benn recieved.")
                case .failure(let error):
                    ProgressHUD.showError(error.localizedDescription)
                
            }
        }
    }
    
}
