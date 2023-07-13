//
//  ContentView.swift
//  M4Lesson6Challenge
//
//  Created by Chuck Belcher on 7/13/23.
//

import SwiftUI

struct StaffView: View {
    @EnvironmentObject var staffModel: StaffModel
    //var staffModel = StaffModel()
    
    var body: some View {
        List(staffModel.staff) {employee in
            VStack (alignment: .leading) {
                Text(employee.name)
                    .font(.title)
                
                if staffModel.showTeam == true {
                    Text(" -  " + employee.team)
                }
                
                if staffModel.showFocus == true {
                    let focusArea = employee.focus ?? "Non-Technical"
                    
                    Text(" -  " + focusArea)
                }
                
                if staffModel.showYearsOfExperience {
                    if employee.yearsOfExperience < 5 {
                        Text(" -  " + String(employee.yearsOfExperience) + " Years of experience")
                            .foregroundColor(.red)
                    } else {
                        Text(" -  " + String(employee.yearsOfExperience) + " Years of experience")
                            .foregroundColor(.green)
                    }
                }
            }
        }
    }
}

struct StaffView_Previews: PreviewProvider {
    static var previews: some View {
        StaffView()
           .environmentObject(StaffModel())
    }
}
