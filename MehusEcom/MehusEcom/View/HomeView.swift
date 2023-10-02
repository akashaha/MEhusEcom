//
//  HomeView.swift
//  MehusEcom
//
//  Created by Arman Akash on 10/2/23.
//

import SwiftUI

struct HomeView: View {
    // PROPERTIES
    var cateGoryArray = ["electronics","jewelery","men's clothing","women's clothing"]
    // BODY
    var body: some View {
        NavigationStack{
            VStack{
                VStack(alignment: .leading){
                    Section {
                        ScrollView(.horizontal, showsIndicators: false){
                            HStack{
                                ForEach(cateGoryArray, id: \.self){ itams in
                                    Text(itams)
                                        .font(.system(size: 18))
                                        .frame(width: 150, height: 25)
                                        .background(Color.orange)
                                        .cornerRadius(10)
                                }
                            }
                        }
                    } header: {
                        Text("Product Category")
                            .font(.title3)
                            .fontWeight(.semibold)
                            .foregroundStyle(.secondary)
                    }
                    
                    VStack (alignment: .leading){
                        
                        Section {
                            Text("ADD POPULAR PRODUCT HERE")
                        } header: {
                            Text("Popular product")
                                .font(.title3)
                                .fontWeight(.semibold)
                                .foregroundStyle(.secondary)
                        }
                    } //: VSTACK
                }
                .padding(0)
              
                
              
                
            } //: VSTACK
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.inline)
            
        }
    }
}

// PREVIEW
#Preview {
    HomeView()
}

