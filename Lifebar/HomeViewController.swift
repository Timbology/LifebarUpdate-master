//
//  HomeViewController.swift
//  Lifebar
//
//  Created by Timbology on 30/04/2018.
//  Copyright © 2018 Timbology. All rights reserved.
//

import Foundation
import UIKit
import Firebase


class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var tablevIiew:UITableView!
    
    var shelters = [
        Shelter(id: "1", name: "Bournemouth Borough Council Housing Services", bio: "Assessment of entitlement to housing for people who are homeless or threatened with homelessness. Housing for people considered in priority need of housing. Temporary accommodation may be available while enquiries are made about eligibility. Homelessness prevention work. Rent deposit scheme. General housing advice and information. Out of hours emergencies phone 01202 668123.", long: -1.882, lat: 50.722, target: 10),
        Shelter(id: "2", name: "BCHA Dorset Lodge", bio: "Single homeless people. Can accommodate ex-offenders. Must have local connection to Bournemouth.", long: 1.888, lat: 50.721, target: 10),
        Shelter(id: "3", name: "BCHA St Paul's Hostels", bio: "Single homeless people with a local connection to Bournemouth. Those without a local connection can only stay if local authority grant temporary permission. Short stay agreement up to 6th months, and can be extended, Can accept 2 couples. Can accept people with dogs.", long: -1.866, lat: 50.725, target: 15)
    ]
        
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tablevIiew = UITableView(frame: view.bounds, style: .plain)
        
        let cellNib = UINib(nibName: "PostTableViewCell", bundle: nil)
        tablevIiew.register(cellNib, forCellReuseIdentifier: "postCell")
        view.addSubview(tablevIiew)
        
        var layoutGuide:UILayoutGuide!
        
        if #available(iOS 11.0, *) {
            layoutGuide = view.safeAreaLayoutGuide
        } else {
            //call to earlier versions
            layoutGuide = view.layoutMarginsGuide
        }
        
        tablevIiew.leadingAnchor.constraint(equalTo: layoutGuide.leadingAnchor).isActive = true
        tablevIiew.topAnchor.constraint(equalTo: layoutGuide.topAnchor).isActive = true
        tablevIiew.trailingAnchor.constraint(equalTo: layoutGuide.trailingAnchor).isActive = true
        tablevIiew.bottomAnchor.constraint(equalTo: layoutGuide.bottomAnchor).isActive = true
        
        tablevIiew.delegate = self
        tablevIiew.dataSource = self
        tablevIiew.tableFooterView = UIView()
        tablevIiew.reloadData()
        
    }
    
    
    @IBAction func handleLogout(_ sender:Any) {
        try! Auth.auth().signOut()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return shelters.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "postCell", for: indexPath) as! PostTableViewCell
        cell.set(shelter: shelters[indexPath.row])
        return cell
    }
}
