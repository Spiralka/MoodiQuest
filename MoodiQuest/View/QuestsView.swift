//
//  QuestsView.swift
//  MoodiQuest
//
//  Created by Евгений Фомин on 11.05.2025.
//

import SwiftUI

struct QuestsView: View {
    @StateObject private var viewModel = ContentViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                if viewModel.isLoading {
                    ProgressView("Загрузка...")
                } else if let errorMessage = viewModel.errorMessage {
                    Text(errorMessage)
                        .foregroundColor(.red)
                } else {
                    List(viewModel.quests) { quest in
                        VStack(alignment: .leading) {
                            Text(quest.shortName)
                                .font(.headline)
                            Text(quest.description)
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                            if let progress = quest.progressNumber, progress != 0 {
                                Text("Прогресс: \(progress)")
                                    .font(.footnote)
                                    .foregroundColor(.blue)
                            }
                        }
                    }
                }
            }
            .navigationTitle("Квесты на день")
            .onAppear {
                viewModel.loadDailyQuests()
            }
        }
    }
}

#Preview {
    QuestsView()
}
