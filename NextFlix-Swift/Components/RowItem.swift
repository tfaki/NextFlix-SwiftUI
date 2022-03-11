//
//  RowItem.swift
//  NextFlix-Swift
//
//  Created by Talha Faki on 11.03.2022.
//

import SwiftUI

struct RowItem: View {
    var body: some View {
        VStack {
            HStack {
                Spacer().frame(width: 16)
                Image(systemName: "phone.fill")
                    .resizable()
                    .frame(width: 50.0, height: 80.0)
                    .padding(10.0)
                    .background(Color.blue)
                    .clipShape(Circle())
                Spacer().frame(width: 25)
                VStack {
                    Text("Hello, First!")
                    Text("Hello, Second!")
                }
                Spacer()
            }
        }
        .frame(maxWidth: .infinity)
        .background(Color.gray)
        .clipShape(RoundedRectangle(cornerRadius:8))
    }
}

struct RowItem_Previews: PreviewProvider {
    static var previews: some View {
        RowItem()
    }
}
