//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by flow on 30.6.22.
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
