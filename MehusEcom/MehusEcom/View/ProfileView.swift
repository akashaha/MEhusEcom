//
//  ProfileView.swift
//  MehusEcom
//
//  Created by Arman Akash on 10/1/23.
//

import SwiftUI

struct ProfileView: View {
    
    @State private var isAnimatedButtons = false
    var items = ["My Profile", "Wishlist","My Orders", "Settings", "Logout"]
    
    var body: some View {
        VStack {
            // Header
            VStack( spacing: 3){
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .foregroundStyle(Color(.systemGray4))
                
                Text("Name")
                    .font(.title2)
                    .fontWeight(.semibold)
                    
            } //: VSTACK
            
            // List
            List{
                Section{
                    ForEach(items, id: \.self) { items in
                        Text(items)
                    }
                } //: SECTION 1
                
                Section{
                    Button(action: {
                        // add Log out Functionality
                        print("LogOut successful")
                        
                    }, label: {
                        Text("Log Out")
                            
                    }) //: LogOut Button
                    Button(action: {
                        // add Delete Functionality
                        print("Delete Complete")
                        
                    }, label: {
                        Text("Delete Account")
                    }) // Delete Button
                } //: SECTION 2
                .foregroundStyle(Color.red)
            } //: LIST
        } //: VSTACK
    }
}

#Preview {
    ProfileView()
}
