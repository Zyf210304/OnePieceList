//
//  WelcomeScreenView.swift
//  OnePieceList
//
//  Created by 张亚飞 on 2022/4/21.
//

import SwiftUI


struct WelcomeScreenView: View {
    var body: some View {
        
        NavigationView {
            
            ZStack {
                
                Image("bg")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .overlay(LinearGradient(colors: [Color.black.opacity(0.3), Color.black.opacity(0.9)], startPoint: .topLeading, endPoint: .bottomTrailing))
                    .frame(width: UIScreen.main.bounds.width)
                    .ignoresSafeArea()
                
                VStack(alignment: .leading) {
                    
                    Image("profile")
                        .resizable()
                        .clipShape(Circle())
                        .frame(width: 80, height: 80)
                    
                    Spacer()
                    Spacer()
                    
                    
                    Text("Cartoon")
                        .font(.title)
                        .foregroundColor(.white)
                        .fontWeight(.light)
                    
                    Text("One Piece")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                    
                    Text("Luffy want to get One Piece \n with his friends")
                        .foregroundColor(.white)
                        .padding(.vertical)
                    
                    Spacer()
                    
                    HStack {
                        
                        Spacer()
                        
                        NavigationLink {
    
                            HomeScreenView()
    
                        } label: {
                            
                            NextBtn()
                        }

                    }
                    
                }
                .padding(.horizontal, 10)
                
            }
        }
    }
}


struct WelcomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
