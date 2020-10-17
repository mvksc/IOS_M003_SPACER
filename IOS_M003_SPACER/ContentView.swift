//
//  ContentView.swift
//  IOS_M003_SPACER
//
//  Created by MVK on 17/9/2563 BE.
//  Copyright © 2563 MVK. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            RowItem(sName: "Row1",iColor: Color.red)
            Spacer().frame(height: 5)
            ColItem()
            Spacer().frame(height: 5)
            RowItem(sName: "Row2", iColor: Color.green)
            Spacer().frame(height: 5)
            ColItem()
            Spacer().frame(height: 5)
            RowItem(sName: "Row3", iColor: Color.yellow)
            
        }.edgesIgnoringSafeArea(.all)
            .background(Color.black)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ColItem: View {
    var body: some View {
        HStack{
            Text("Col1")
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight:.infinity)
                .background(Color.red)
            Spacer().frame(width: 5)
            Text("Col2")
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight:.infinity)
                .background(Color.green)
            Spacer().frame(width: 5)
            Text("Col3")
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight:.infinity)
                .background(Color.yellow)
        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight:.infinity)
            .background(Color.black)
    }
}

struct RowItem: View {
    let sName: String
    let iColor: Color
    init(sName: String,iColor: Color) {
        self.sName = sName
        self.iColor = iColor
    }
    var body: some View {
        Text(self.sName)
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight:.infinity)
            .background(self.iColor)
    }
}
