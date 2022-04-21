//
//  WelcomeComponents.swift
//  OnePieceList
//
//  Created by 张亚飞 on 2022/4/21.
//

import SwiftUI


struct NextView: View {
    var body: some View {

//        Button {

//            print("1111");
//            gotoHomeView()
            
//        } label: {
            
            HStack {
                
                Text("Next")
                    .font(.system(size: 20))
                    .fontWeight(.semibold)
                
                Image(systemName: "arrowshape.turn.up.right")
            }
            .foregroundColor(.white)
            .padding(.vertical, 12)
            .padding(.horizontal, 20)
            .background {

                Color.green
                    .opacity(0.5)
                    .cornerRadius(20)
            }
//        }
        
    }

}

struct NextBtn: View {
    
    
    @Binding var isGoHome: Bool
    
    var body: some View {

        Button {

            //something
            
            isGoHome = true
            
        } label: {
            
            HStack {
                
                Text("Next")
                    .font(.system(size: 20))
                    .fontWeight(.semibold)
                
                Image(systemName: "arrowshape.turn.up.right")
            }
            .foregroundColor(.white)
            .padding(.vertical, 12)
            .padding(.horizontal, 20)
            .background {

                Color.orange
                    .opacity(0.5)
                    .cornerRadius(20)
            }
        }
        
    }

}


struct NextBtnRed: View {
    
    @EnvironmentObject var  vm: PageViewModel
    
    var body: some View {

        Button {

            vm.App_first = false
            
        } label: {
            
            HStack {
                
                Text("Next")
                    .font(.system(size: 20))
                    .fontWeight(.semibold)
                
                Image(systemName: "arrowshape.turn.up.right")
            }
            .foregroundColor(.white)
            .padding(.vertical, 12)
            .padding(.horizontal, 20)
            .background {

                Color.red
                    .opacity(0.5)
                    .cornerRadius(20)
            }
        }
        
    }

}
