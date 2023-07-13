//
//  TabView.swift
//  M4Lesson6Challenge
//
//  Created by Chuck Belcher on 7/13/23.
//

import SwiftUI

struct StaffTabView: View {
    var body: some View {
        
        TabView {
            StaffView()
                .tabItem {
                    VStack {
                        Image(systemName: "person")
                        Text("Staff")
                    }
                }
            PreferenceView()
                .tabItem {
                    VStack {
                        Image(systemName: "list.bullet")
                        Text("Preferences")
                    }
                }
        }
        
    }
}

struct StaffTabView_Previews: PreviewProvider {
    static var previews: some View {
        StaffTabView()
            .environmentObject(StaffModel())
    }
}
