//
//  CountryViewController.swift
//  ABassignment
//
//  Created by Alen George on 13/09/23.
//

import UIKit

class CountryViewController: UIViewController {
    
    var countries = ["Jordan","Palestine","Egypt","Lebanon","Unitied Arab Emirates","Qatar","Bahrain","Algeria"]
    var enumCountries: [strings] = [.Jordan, .Palestine, .Egypt, .Lebanon, .UnitedArabEmirates, .Qatar, .Bahrain, .Algeria]
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var tittleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.register(UINib(nibName:"TableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
        tittleLabel.text = strings.ChooseTheCountry.localized
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "homePage" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let selectedTextData = enumCountries[indexPath.row]
                let selectedImageData = countries[indexPath.row]
                if let previousVC = segue.destination as? ViewController {
                    previousVC.updatedTextData = selectedTextData.localized
                    previousVC.updatedImageData = selectedImageData
                }
            }
        }
    }
}
extension CountryViewController:UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countries.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        let flag = countries[indexPath.row]
        cell.flagImage.image = UIImage(named: flag)
        cell.flagImage.layer.cornerRadius = cell.flagImage.frame.width / 2
        self.tableView.separatorStyle = .none
        let country = enumCountries[indexPath.row]
        cell.textlabel.text = country.localized
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
}
