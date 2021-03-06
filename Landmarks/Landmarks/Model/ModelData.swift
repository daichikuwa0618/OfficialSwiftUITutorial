//
//  ModelData.swift
//  Landmarks
//
//  Created by Daichi Hayashi on 2021/03/12.
//

import Foundation
import Combine

final class ModelData: ObservableObject {
    @Published var landmarks: [Landmark] = load("landmarkData.json")
    var hikes: [Hike] = load("hikeData.json")
    @Published var profile = Profile.default

    var features: [Landmark] {
        landmarks.filter { $0.isFeatured }
    }

    var categories: [String: [Landmark]] {
        Dictionary(
            grouping: landmarks,
            by: { $0.category.rawValue }
        )
    }
}

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else {
        fatalError("main bundle で \(filename) が見つかりませんでした")
    }

    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("main bundle から \(filename) が読み込めませんでした:\n\(error)")
    }

    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("\(filename) を \(T.self) にパースできませんでした:\n\(error)")
    }
}
