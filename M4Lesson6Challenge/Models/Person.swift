//
//  Person.swift
//  M4Lesson6Challenge
//
//  Created by Chuck Belcher on 7/13/23.
//

import Foundation

class Person: Identifiable, Decodable {
    
    var id: UUID?
    var name: String
    var team: String
    var focus: String?
    var yearsOfExperience: Int
}
