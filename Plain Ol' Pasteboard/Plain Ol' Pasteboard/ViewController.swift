///Users/yuvikaarora/Documents/IOS apps/Plain Ol' Pasteboard/Plain Ol' Pasteboard.xcodeproj
//  ViewController.swift
//  Plain Ol' Pasteboard
//
//  Created by Yuvika Arora on 2020-05-18.
//  Copyright © 2020 Yuvika Arora. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let DATA_KEY = "data_key"

    @IBOutlet weak var textView: UITextView!
    
    var pastedStrings : [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let loadedStrings = UserDefaults.standard.stringArray(forKey: DATA_KEY) {
            pastedStrings.append(contentsOf: loadedStrings)
        }
        showText()
    }
    
    func addText() {
        guard let text = UIPasteboard.general.string, !pastedStrings.contains(text) else
        {
            return
        }
        pastedStrings.append(text)
        UserDefaults.standard.set(pastedStrings, forKey: DATA_KEY)
        showText()
    }
    
    func showText() {
        textView.text = ""
        for str in pastedStrings {
            textView.text.append("\(str)\n----\n")
        }
    }

    @IBAction func trashPressed(_ sender: Any) {
        pastedStrings.removeAll()
        textView.text = ""
        UserDefaults.standard.removeObject(forKey: DATA_KEY)
    }
    
}

