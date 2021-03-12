//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Daichi Hayashi on 2021/03/10.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
