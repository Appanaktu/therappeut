//
//  TermineHeuteViewController.swift
//  therappeut
//
//  Created by Patrick Mondani on 06.12.19.
//  Copyright © 2019 patzimo. All rights reserved.
//

import UIKit

protocol AddTerminDelegate{
    func addTerminButtonTapped(sender: TermineHeuteViewController)
}

class TermineHeuteViewController: UIViewController{
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var addTerminButton: UIButton!
    @IBOutlet weak var addTerminView: RoundedView!
    
    var terminForSegue: Termin?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 236/255, green: 240/255, blue: 241/255, alpha: 1)
        tableView.dataSource = self
        addTerminView.layer.shadowColor = UIColor.black.cgColor
        addTerminView.layer.shadowOpacity = 0.5
        
        let date = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd MMM"
        dateFormatter.locale = Locale.current
        let result = dateFormatter.string(from: date)
        
        self.title = "Heute, " + result
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "DetailSegue"{
            if let detailViewController = segue.destination as? DetailViewController, let termin = terminForSegue {
                detailViewController.title = termin.therapie
                detailViewController.termin = termin
            }
        }
        if segue.identifier == "AddTerminSegue"{
            if let detailViewController = segue.destination as? DetailViewController, let termin = terminForSegue {
                detailViewController.title = termin.therapie
                detailViewController.termin = termin
            }
        }
    }
}

extension TermineHeuteViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Termin.exampleTermine.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "TherapieCell", for: indexPath) as? TherapieTableViewCell {
            cell.configure(for: Termin.exampleTermine[indexPath.row], delegate: self)
            return cell
        }
        return UITableViewCell()
    }
}

extension TermineHeuteViewController: TherapieCellDelegate{
    func detailButtonTapped(sender: TherapieTableViewCell) {
        if let termin = sender.termin{
            terminForSegue = termin
            performSegue(withIdentifier: "DetailSegue", sender: nil)
        }
    }
}

extension TermineHeuteViewController: AddTerminDelegate{
    func addTerminButtonTapped(sender: TermineHeuteViewController) {
            performSegue(withIdentifier: "AddTerminSegue", sender: nil)
        }
    }
}
