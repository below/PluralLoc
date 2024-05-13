//
//  ViewController.swift
//  Plural Loc
//
//  Created by Alexander v. Below on 08.10.19.
//  Copyright © 2019 Alexander von Below. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let format = NSLocalizedString("%lld bottles of beer", comment: "")

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var stepper: UIStepper!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.updateText(value: Int(stepper.value))
        
        var text: String = ""
        for i in 0 ... 30 {
            text.append(localizedString(cardinal: i) + "\n")
        }
        textView.text = text
    }

    func updateText(value: Int) {
        label.text = localizedString(cardinal: value)
    }
    
    @IBAction func newValue(_ sender: UIStepper) {
        self.updateText(value: Int(sender.value))
    }
    
    func localizedString(cardinal: Int) -> String {
        return String(format: format, cardinal)
    }
    
}

#Preview {
    return ViewController()
}
