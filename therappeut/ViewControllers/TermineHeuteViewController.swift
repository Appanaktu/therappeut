//
//  TermineHeuteViewController.swift
//  therappeut
//
//  Created by Patrick Mondani on 06.12.19.
//  Copyright © 2019 patzimo. All rights reserved.
//

import UIKit

class TermineHeuteViewController: UIViewController{
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 236/255, green: 240/255, blue: 241/255, alpha: 1)
        tableView.dataSource = self
    }
}

extension TermineHeuteViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Termin.exampleTermine.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "TherapieCell", for: indexPath) as? TherapieTableViewCell {
            cell.configure(for: Termin.exampleTermine[indexPath.row])
            return cell
        }
        return UITableViewCell()
    }
}
