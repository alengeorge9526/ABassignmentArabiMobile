//
//  String.swift
//  ABassignment
//
//  Created by Alen George on 15/09/23.
//

import Foundation

enum strings: String {
    case Country
    case ChangeCountry
    case ChooseTheCountry
    case Jordan
    case Palestine
    case Egypt
    case Lebanon
    case UnitedArabEmirates
    case Qatar
    case Bahrain
    case Algeria

    var localized: String {
        NSLocalizedString(String(describing: self.self) + "_\(rawValue)", comment: "")
    }
}
