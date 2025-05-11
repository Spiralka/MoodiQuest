//
//  ContentView.swift
//  MoodiQuest
//
//  Created by Евгений Фомин on 26.12.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            QuestsView()
                .tabItem {
                    Label("Квесты", systemImage: "list.bullet")
                }
            
            StatsView()
                .tabItem {
                    Label("Статистика", systemImage: "chart.bar.fill")
                }
            
            MenuView()
                .tabItem {
                    Label("Ещё", systemImage: "square.grid.3x3")
                }
        }
    }
}

#Preview {
    ContentView()
}
