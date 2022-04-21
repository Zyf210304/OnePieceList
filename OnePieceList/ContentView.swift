//
//  ContentView.swift
//  OnePieceList
//
//  Created by 张亚飞 on 2022/4/21.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var  vm = PageViewModel()
    var body: some View {
        
        VStack {
            
            if vm.App_first {
                
                WelcomeScreenView().environmentObject(vm)
                    .transition(AnyTransition.scale.animation(.easeInOut(duration: 0.4)))
            } else {
                
                HomeScreenView().environmentObject(vm)
                    .transition(AnyTransition.scale.animation(.linear(duration: 0.4)))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

