//
//  ContentViewModel.swift
//  MoodiQuest
//
//  Created by Евгений Фомин on 13.01.2025.
//

import SwiftUI
import Combine

final class ContentViewModel: ObservableObject {
    @Published var quests: [Quest] = []
    @Published var errorMessage: String?
    @Published var isLoading: Bool = false
    
    func loadDailyQuests() {
        isLoading = true
        NetworkManager.shared.fetchDailyQuests { [weak self] result in
            DispatchQueue.main.async {
                self?.isLoading = false
            }
            switch result {
            case .success(let quests):
                self?.quests = quests
                print(quests)
            case .failure(let error):
                self?.errorMessage = error.localizedDescription
            }
        }
    }
}
