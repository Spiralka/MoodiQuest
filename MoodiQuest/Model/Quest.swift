//
//  Quest.swift
//  MoodiQuest
//
//  Created by Евгений Фомин on 26.12.2024.
//

import Foundation

struct Quest: Decodable, Identifiable {
    let id: Int
    let shortName: String
    let description: String
    let progressNumber: Int?
}
