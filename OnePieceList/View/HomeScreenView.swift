//
//  HomeScreenView.swift
//  OnePieceList
//
//  Created by 张亚飞 on 2022/4/21.
//

import SwiftUI

struct HomeScreenView: View {
    
    
    var body: some View {
        
        ZStack (alignment:.top){
            
            Color(.black)
                .opacity(0.05)
                .ignoresSafeArea()
            
            VStack {
                HeaderView()
                
                CategoriesView()
                
                SectionTitleView(title: "Recommended")
                
                
                ScrollView(.horizontal, showsIndicators: false) {
                    
                    HStack {
                        
                        RecommendCardView(title: "whole members", price: 150, image: "p1")
                        
                        RecommendCardView(title: "whole members", price: 150, image: "p1")
                    }
                    
                }
                
                
            }
            .padding()
            
        }
//        隐藏包括标题和返回键在内的所有系统导航栏
        .navigationBarHidden(true)
        //只隐藏系统导航栏中的返回键
//        .navigationBarBackButtonHidden(true)
    }
}

struct HomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView()
    }
}


struct RecommendCardView: View {
    
    var title: String
    var price: Int
    var image: String
    var body: some View {
        VStack {
            
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 100)
                .clipped()
            
            VStack(alignment: .leading) {
                
                Text(title)
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(.primary)
                
                HStack {
                    
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    
                    Text("4.8")
                        .font(.caption)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.primary.opacity(0.5))
                }
                
                HStack {
                    
                    Text("$\(price)")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.orange.opacity(0.7))
                    
                    Spacer()
                    
                    Image(systemName: "plus")
                        .foregroundColor(.white)
                        .padding(.all, 8)
                        .background(Color.blue)
                        .clipShape(Circle())
                        .onTapGesture {
                            
                        }
                }
            }
            .padding()
            
        }
        .frame(width: 200)
        .background(Color.white)
        .cornerRadius(20.0)
        .shadow(color: Color.black.opacity(0.2), radius: 3, x: 2, y: 0)
        
    }
}
