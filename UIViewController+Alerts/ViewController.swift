//
//  ViewController.swift
//  UIViewController+Alerts
//
//  Created by Jerry Yu on 2016-09-21.
//  Copyright © 2016 Jerry Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	override func viewDidAppear(_ animated: Bool) {
		super.viewDidAppear(animated)
		simpleAlert()
	}

	func simpleAlert() {
		self.show(.alert, title: "The Sky is Blue", message: nil)
	}

	func twoActions() {
		let tyles: [(String, UIAlertActionStyle)] = [
			("Blue Pill", .default),
			("Red Pill", .destructive),
		]
		self.show(.actionSheet, title: "Chose One", message: nil, titleAndStyles: tyles) { (action, index) in
			// The index corresponds to the order of the given actions above
			print(["Blue", "Red"][index])
			self.twoActions()
		}
	}

}

