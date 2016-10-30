//
//  UIViewController+Alerts.swift
//  UIViewController+Alerts
//
//  Created by Jerry Yu on 2016-09-21.
//  Copyright © 2016 Jerry Yu. All rights reserved.
//

import UIKit

extension UIViewController {

	func show(_ style: UIAlertControllerStyle, title: String?, message: String?, actions: [UIAlertAction]) {
		let alert = UIAlertController(title: title, message: message, preferredStyle: style)
		for action in actions { alert.addAction(action) }
		self.present(alert, animated: true, completion: nil)
	}

	func show(_ style: UIAlertControllerStyle, title: String?, message: String?, titleAndStyles: [(String, UIAlertActionStyle)], cb: ((_ action: UIAlertAction, _ index: Int)->Void)? = nil) {
		let actions = titleAndStyles.enumerated().map { (index: Int, element: (String, UIAlertActionStyle)) -> UIAlertAction in
			return UIAlertAction(title: element.0, style: element.1, handler: { cb?($0, index) })
		}
		show(style, title: title, message: message, actions: actions)
	}

	func show(_ style: UIAlertControllerStyle, title: String?, message: String?, cancelTitle: String = "OK", otherTitles: [String] = [], cb: ((_ action: UIAlertAction, _ index: Int)->Void)? = nil) {
		var actions = [UIAlertAction]()
		actions.append(UIAlertAction(title: cancelTitle, style: .cancel, handler: { cb?($0, 0) }))
		actions += otherTitles.enumerated().map{ (index, title) -> UIAlertAction in
			return UIAlertAction(title: title, style: .default, handler: { cb?($0, index+1) })
		}
		show(style, title: title, message: message, actions: actions)
	}

}
