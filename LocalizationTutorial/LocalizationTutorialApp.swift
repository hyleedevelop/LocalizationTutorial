//
//  LocalizationTutorialApp.swift
//  LocalizationTutorial
//
//  Created by Eric on 1/5/24.
//

import SwiftUI
import AppTrackingTransparency

@main
struct LocalizationTutorialApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .task {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                        ATTrackingManager.requestTrackingAuthorization { status in
                            switch status {
                            case .authorized:
                                print("Privacy - Tracking usage: authorized")
                            case .denied:
                                print("Privacy - Tracking usage: denied")
                            case .notDetermined:
                                print("Privacy - Tracking usage: notDetermined")
                            case .restricted:
                                print("Privacy - Tracking usage: restricted")
                            @unknown default:
                                print("Privacy - Tracking usage: default")
                            }
                        }
                    }
                }
        }
    }
}
