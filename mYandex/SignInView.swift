//
//  SignInView.swift
//  mYandex
//
//  Created by Victoria Belinschi on 05.01.2022.
//

import SwiftUI

struct SignInView: View {
    @State var username: String = ""
    var body: some View {
        VStack {
            Spacer()
                    .frame(height: 50)
            VStack(alignment: .center) {
                Text("Y")
                    .foregroundColor(.white)
                    .font(.system(size: 60))
                    .fontWeight(.bold)
                    .frame(width: 60, height: 60, alignment: .center)
                    .padding()
                    .background(
                        Circle()
                            .fill(Color.red)
                            .frame(width: 70, height: 70)
                    )
                Text("Enter your phone number")
            }
            VStack(alignment: .leading) {
                Text("Mobile number")
                    .foregroundColor(.gray)
                HStack(spacing: 4) {
                    Text("+373")
                        .foregroundColor(.black)
                        .fontWeight(.bold)
                    TextField("", text: $username)
                        .foregroundColor(.black)
                }
                Color.yellow.frame(height:CGFloat(3) / UIScreen.main.scale)
                    .padding(.bottom)
                VStack(spacing: 20) {
                    Button(action: {}) {
                        Text("Next")
                            .fontWeight(.semibold)
                    }
                    .frame(minWidth: 100, maxWidth: .infinity, minHeight: 44)
                    .foregroundColor(.black)
                    .background(Color.yellow)
                    .cornerRadius(5)
                    Button(action: {}) {
                        HStack(spacing: 2) {
                            Text("Y")
                                .foregroundColor(.white)
                                .font(.system(size: 15))
                                .fontWeight(.bold)
                                .frame(width: 10, height: 10, alignment: .center)
                                .padding()
                                .background(
                                    Circle()
                                        .fill(Color.red)
                                        .frame(width: 25, height: 25)
                                )
                            Text("Sign in with Yandex")
                                .fontWeight(.semibold)
                        }
                    }
                    .frame(minWidth: 100, maxWidth: .infinity, minHeight: 44)
                    .foregroundColor(.black)
                    //.border(Color.gray, width: 2)
                    .overlay(
                        RoundedRectangle(cornerRadius: 5)
                            .stroke(Color.gray, lineWidth: 2)
                    )
                    .cornerRadius(5)
                }
            }.padding()
                .frame(width: UIScreen.main.bounds.size.width - 20)
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
