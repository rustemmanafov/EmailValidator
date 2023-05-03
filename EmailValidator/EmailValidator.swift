//
//  EmailValidator.swift
//  EmailValidator
//
//  Created by Rustem Manafov on 28.04.23.
//

import Foundation

public class EmailValidator {
    public static func validateEmail(email: String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPred = NSPredicate(format: "Self Matches %@", emailRegEx)
        return emailPred.evaluate(with: email)
    }
}
