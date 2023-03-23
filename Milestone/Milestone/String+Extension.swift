//
//  String+Extension.swift
//  Milestone
//
//  Created by macbook pro on 23.03.2023.
//

import UIKit

extension String {
    func configureFirstLetter() -> String {
        let result = self
        let lastResult = result.prefix(result.count - 7)
        let resultLast = String(lastResult)
        return resultLast
    }
}
