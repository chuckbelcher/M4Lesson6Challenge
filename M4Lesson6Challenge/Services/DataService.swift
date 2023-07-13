//
//  DataService.swift
//  M4Lesson6Challenge
//
//  Created by Chuck Belcher on 7/13/23.
//

import Foundation


class DataService {
    
    static func getLocalData() -> [Person] {
        
        //Get Path to json file
        let filePath = Bundle.main.path(forResource: "staff", ofType: "json")
        if let path = filePath {
            
            //Create URL to json file path
            let url = URL(fileURLWithPath: path)
            
            //Create a data object from the URL
            do {
                
                let data = try Data(contentsOf: url)
                
                //Create a JSON Decoder
                let decoder = JSONDecoder()
                
                //Decode the data
                do {
                    
                    let staffData = try decoder.decode([Person].self, from: data)
                    
                    //Add id to each staff member
                    for member  in staffData {
                        member.id = UUID()
                    }
                    
                    return staffData
                    
                } catch {
                    
                    print(error)
                    
                }
                
            } catch {
                
                print(error)
                
            }
            
            
        }
        
        return [Person]()
        
    }
    
    
    
}
