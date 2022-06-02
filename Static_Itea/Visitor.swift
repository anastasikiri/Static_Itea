//
//  Visitor.swift
//  Static_Itea
//
//  Created by Anastasia Bilous on 2022-05-30.
//

import Foundation

class Visitor {
    var name: String
    var dateOfVisit: Int
    
    static private (set) var amountOfAllVisitors = 0   // private static var cannot be changed outside,
                                                    // access the property by using the full name of the type,
                                                    // static var created belong to a type, not to a specific instance.
    init(name: String, dateOfVisit: Int) {
        self.name = name
        self.dateOfVisit = dateOfVisit
        Visitor.amountOfAllVisitors += 1               // every time when we create a new instance from Visitor this var will increase +1
    }
    deinit{Visitor.amountOfAllVisitors -= 1}           // every time when we remove an instance from Visitor this var will decrease -1
}

