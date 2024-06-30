//
//  CurrencyTip.swift
//  CurrencyConverter
//
//  Created by Vlad M on 30.06.2024.
//

import Foundation
import TipKit

struct CurrencyTip: Tip {
    var title = Text("Change Currency")
    var message: Text? = Text("You can tap the left or right currency to bring up the select currency screen.")
}
