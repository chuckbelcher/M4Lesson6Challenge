//
//  StaffModel.swift
//  M4Lesson6Challenge
//
//  Created by Chuck Belcher on 7/13/23.
//

import Foundation

class StaffModel: ObservableObject {
    
    @Published var staff = [Person]()
    @Published var showFocus = true
    @Published var showTeam = true
    @Published var showYearsOfExperience = true
    
    init() {
        
        //Create an instance of hte data service
        self.staff = DataService.getLocalData()
    }
}
