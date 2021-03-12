//
//  ContentView.swift
//  Landmarks
//
//  Created by Daichi Hayashi on 2021/03/10.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
