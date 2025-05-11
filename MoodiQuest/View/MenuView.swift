//
//  MenuView.swift
//  MoodiQuest
//
//  Created by Евгений Фомин on 11.05.2025.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: AboutView()) {
                    Text("О приложении")
                }
                
                NavigationLink(destination: SuggestQuestView()) {
                    Text("Предложить квест")
                }
                
                NavigationLink(destination: FeedbackView()) {
                    Text("Напиши нам")
                }
                
                NavigationLink(destination: SettingsView()) {
                    Text("Настройки")
                }
            }
            .navigationTitle("Меню")
        }
    }
}

#Preview {
    MenuView()
}
