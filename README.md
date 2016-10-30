# UIViewController-Alerts

A small extension to `UIViewController` to simplify creating alerts and actionsheets, Swift 3 style.

# Requirements

- iOS 9.0+
- Xcode 8.0+
- Swift 3.0+

Just include the `UIViewController+Alerts.swift` file in the top-level directory.

# Examples

### Simple alert
```
func simpleAlert() {
    self.show(.alert, title: "The Sky is Blue", message: nil)
}
```

### Alert with buttons
```
func alertWithButtons() {
		self.show(.alert, title: "What's Your Favourite?", message: nil, cancelTitle: "Huh?", otherTitles: ["Lightning", "Thunderbolt"]) { (action, index) in
			switch index {
			case 1:
				print("Lightning")
			case 2:
				print("Thunderbolt")
			default:
				print("Cancelled")
			}
		}
	}
```

### Simple actionsheet
```
func simpleActionsheet() {
		let tyles: [(String, UIAlertActionStyle)] = [
			("Blue Pill", .default),
			("Red Pill", .destructive),
		]
		self.show(.actionSheet, title: "Chose One", message: nil, titleAndStyles: tyles) { (action, index) in
			print(tyles[index].0)
		}
	}
```

#
Inspired by [UIAlertController+Blocks](https://github.com/ryanmaxwell/UIAlertController-Blocks)
