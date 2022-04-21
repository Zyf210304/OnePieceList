//
//  WelcomeScreenView.swift
//  OnePieceList
//
//  Created by 张亚飞 on 2022/4/21.
//

import SwiftUI


struct WelcomeScreenView: View {
    
    @EnvironmentObject var  vm: PageViewModel
    
    @State var isToHome: Bool = false
    
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

                        //控制ContentView实现页面跳转
                        NextBtnRed()
                            .environmentObject(vm)

                        //改变参数后实现页面跳转
                        NavigationLink(destination: HomeScreenView(), isActive: $isToHome) {
                            
                            NextBtn(isGoHome: $isToHome)
                        }
                        
                        //直接跳转
                        NavigationLink {
                            
                            HomeScreenView()
                            
                        } label: {
                            
                            NextView()
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
