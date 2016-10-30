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
		alertWithButtons()
	}

	func simpleAlert() {
		self.show(.alert, title: "The Sky is Blue", message: nil)
	}

	func alertWithButtons() {
		self.show(.alert, title: "What's Your Favourite?", message: nil, cancelTitle: "Huh?", otherTitles: ["Lightning", "Thunderbolt"]) { (action, index) in
			switch index {
			case 1:
				print("Lightning")
			case 2:
				print("Thunderbolt")
			default:
				print("Wireless")
			}
		}
	}

	func simpleActionsheet() {
		let tyles: [(String, UIAlertActionStyle)] = [
			("Blue Pill", .default),
			("Red Pill", .destructive),
		]
		self.show(.actionSheet, title: "Chose One", message: nil, titleAndStyles: tyles) { (action, index) in
			print(tyles[index].0)
		}
	}

}

