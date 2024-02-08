//
//  SimpleSwiftView.swift
//  SwiftUISample
//
//  Created by Eslam Mohamed on 25/01/2024.
//

import SwiftUI

struct SimpleSwiftView: View {
    @ObservedObject var viewModel = ViewModel()
    var body: some View {
        VStack {
            NavView()
            ScrollView(.vertical, showsIndicators: false) {
                HStack {
                    Text("dsada")
                        .font(.system(size: 30, weight:.bold))
                        .padding(.leading)
                    Spacer()
                }
                ScrollView(.horizontal,showsIndicators: false) {
                    HStack {
                        ForEach.init(viewModel.users, id: \.self) { user in
                            SimpleCell()
                        }
                    }
                    .padding()
                }
                HStack {
                    Text("dsada")
                        .font(.title)
                        .padding(.leading)
                    Spacer()
                }
                ScrollView(.horizontal,showsIndicators: false) {
                    HStack {
                        ForEach.init(viewModel.users, id: \.self) { user in
                            SimpleCell()
                        }
                    }
                    .padding()
                }
                HStack {
                    Text("dsada")
                        .font(.title)
                        .padding(.leading)
                    Spacer()
                }
                ScrollView(.horizontal,showsIndicators: false) {
                    HStack {
                        ForEach.init(viewModel.users, id: \.self) { user in
                            SimpleCell()
                        }
                    }
                    .padding()
                }
            }
        }
    }
}

struct NavView: View {
    var body: some View {
        HStack {
            Button(action: {
                
            }, label: {
                ZStack {
                    Circle()
                        .foregroundStyle(.white)
                        .frame(width: 24)
                    Image(systemName: "chevron.left")
                        .foregroundStyle(.black)
                }
               
            })
            Spacer()
            Text("Cover & Music")
                .font(.system(size: 24,weight: .bold))
                .foregroundStyle(.white)
            Spacer()
        }
        .padding()
        .background(.green)
    }
}
struct SimpleCell: View {
    var body: some View {
        Rectangle()
            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,height: 100)
            .foregroundStyle(.linearGradient(colors: [.red, .orange], startPoint: .topLeading, endPoint: .bottomTrailing))
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .shadow(color: .gray, radius: 6,y: 5)
//            .foregroundStyle(.linearGradient(colors: [.red, .orange], startPoint: .topLeading, endPoint: .bottomTrailing))
    }
}

#Preview {
    SimpleSwiftView()
}
