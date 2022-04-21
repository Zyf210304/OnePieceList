//
//  WelcomeComponents.swift
//  OnePieceList
//
//  Created by 张亚飞 on 2022/4/21.
//

import SwiftUI


struct NextBtn: View {
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

                Color.orange
                    .opacity(0.5)
                    .cornerRadius(20)
            }
//        }
        
    }
    
    func  gotoHomeView() {
        
       
    }
}
