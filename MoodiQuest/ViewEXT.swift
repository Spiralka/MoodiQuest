//
//  ViewExtensions.swift
//  MoodiQuest
//
//  Created by Евгений Фомин on 11.05.2025.
//

import SwiftUI

extension View {
    /// Скрывает клавиатуру
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
