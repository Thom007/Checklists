//
//  ChecklistItem.swift
//  Checklists
//
//  Created by TL on 5/16/2560 BE.
//  Copyright © 2560 TL. All rights reserved.
//

import Foundation

class ChecklistItem: NSObject, NSCoding {
    
    var text = ""
    var checked = false
    
    override init() {
        super.init()
    }
    
    required init?(coder aDecoder: NSCoder) {
        text = aDecoder.decodeObject(forKey: "Text") as! String
        checked = aDecoder.decodeBool(forKey: "Checked")
        super.init()
    }
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(text, forKey: "Text")
        aCoder.encode(checked, forKey: "Checked")
    }
    
    func toggledChecker() {
        checked = !checked
    }
}
