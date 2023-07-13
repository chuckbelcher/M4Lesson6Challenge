//
//  PreferenceView.swift
//  M4Lesson6Challenge
//
//  Created by Chuck Belcher on 7/13/23.
//

import SwiftUI

struct PreferenceView: View {
    @EnvironmentObject var staffModel: StaffModel
    var body: some View {
        
        VStack {
            Text("Preference View")
                .font(.title)
            Toggle("Show Team: ", isOn: $staffModel.showTeam)
            Toggle("Show Focus: ", isOn: $staffModel.showFocus)
            Toggle("Show Experience: ", isOn: $staffModel.showYearsOfExperience)
            Spacer()
        }
        .padding()
    }
}

struct PreferenceView_Previews: PreviewProvider {
    static var previews: some View {
        PreferenceView()
            .environmentObject(StaffModel())
    }
}
