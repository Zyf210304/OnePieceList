//
//  HomeComponents.swift
//  OnePieceList
//
//  Created by 张亚飞 on 2022/4/21.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack {
            
            VStack(alignment: .leading, spacing: 3, content: {
                
                Text("One Piece")
                    .font(.title)
                    .fontWeight(.semibold)
                
                Text("for dream")
                    .font(.title)
            })
            
            Spacer()
            
            Image("p9")
                .resizable()
                .frame(width: 50, height: 50)
                .clipShape(Circle())
        }
    }
}


struct tabsEelenent: Hashable{
    
    let id = UUID().uuidString
    let name: String
}

var tabs = [tabsEelenent(name: "All"), tabsEelenent(name: "Sea poacher"), tabsEelenent(name: "Navy"), tabsEelenent(name: "Civilian")]


struct CategoryBtn: View {
    
    var item: tabsEelenent
    @Binding var selectd: String
    var animation: Namespace.ID
    var proxy: ScrollViewProxy
    
    var body: some View {
        
        
        Button {

            withAnimation {

                selectd = item.name
                proxy.scrollTo(item.id, anchor: .center)
            }
        } label: {
            
            Text(item.name)
                .fontWeight(.semibold)
                .foregroundColor(selectd == item.name ? .white : .primary)
                .padding()
                .padding(.horizontal)
                .background(
                    ZStack {
                        
                        if selectd == item.name {
                            
                            Color.primary
                                .clipShape(Capsule())
                                .matchedGeometryEffect(id: "TAB", in: animation)
                        }
                    }
                )
//                .clipShape(Capsule())
                .shadow(color: Color.black.opacity(0.16), radius: 16, x: 4, y: 4)
        }

        
    }
}

struct CategoriesView: View {
    
    @State var selectTab = tabs[0].name
    @Namespace var animation
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            
            ScrollViewReader { proxy in
                
                HStack {
                    ForEach(tabs, id:\.self) { tabItem in
                        CategoryBtn(item:tabItem, selectd: $selectTab, animation: animation, proxy: proxy)
                            .id(tabItem.id)
//                            .onTapGesture {
//
//                                withAnimation {
//
//                                    selectTab = tabItem.name
//                                    proxy.scrollTo(tabItem.id, anchor: .center)
//                                }
//                            }
                    }
                }
            }
            .padding(.vertical)
        }
    }
}


struct SectionTitleView: View {
    
    var title: String
    
    var body: some View {
        HStack {
            
            Text(title)
                .font(.system(size: 10))
                .fontWeight(.medium)
                .foregroundColor(.primary)
            
            Spacer()
            
            Text("See All")
                .fontWeight(.medium)
                .foregroundColor(.primary.opacity(0.5))
        }
    }
}
