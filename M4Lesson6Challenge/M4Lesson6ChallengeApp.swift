//
//  M4Lesson6ChallengeApp.swift
//  M4Lesson6Challenge
//
//  Created by Chuck Belcher on 7/13/23.
//

import SwiftUI

@main
struct M4Lesson6ChallengeApp: App {
    var body: some Scene {
        WindowGroup {
            StaffTabView()
                .environmentObject(StaffModel())
        }
    }
}
