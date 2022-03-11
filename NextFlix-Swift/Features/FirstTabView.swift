//
//  FirstTabView.swift
//  NextFlix-Swift
//
//  Created by Talha Faki on 11.03.2022.
//

import SwiftUI

struct FirstTabView: View {
    let items = (0..<200)
    
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(items, id: \.self) { value in
                    RowItem()
                }
            }
        }
    }
}

struct FirstTabView_Previews: PreviewProvider {
    static var previews: some View {
        FirstTabView()
    }
}
