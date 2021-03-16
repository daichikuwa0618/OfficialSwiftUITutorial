//
//  LandmarkSettings.swift
//  MacLandmarks
//
//  Created by Daichi Hayashi on 2021/03/16.
//

import SwiftUI

struct LandmarkSettings: View {
    @AppStorage("MapView.zoom")
    private var zoom: MapView.Zoom = .medium

    var body: some View {
        Form {
            Picker("Map Zoom:", selection: $zoom) {
                ForEach(MapView.Zoom.allCases) { level in
                    Text(level.rawValue)
                }
            }
            .pickerStyle(InlinePickerStyle())
        }
        .frame(width: 300)
        .navigationTitle("Landmark Settings")
        .padding(60)
    }
}

struct LandmarkSettings_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkSettings()
    }
}
