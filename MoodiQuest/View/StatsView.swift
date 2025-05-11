//
//  StatsView.swift
//  MoodiQuest
//
//  Created by Евгений Фомин on 11.05.2025.
//

import SwiftUI

struct StatsView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Статистика")
                    .font(.largeTitle)
                    .padding()
                
                Text("Выполнено квестов: 15")
                Text("Прогресс за неделю: 60%")
                Text("Среднее время выполнения: 30 мин")
            }
            .navigationTitle("Статистика")
        }
    }
}

#Preview {
    StatsView()
}
