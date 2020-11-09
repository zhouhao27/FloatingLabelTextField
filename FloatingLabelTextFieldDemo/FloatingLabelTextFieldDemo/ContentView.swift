//
//  ContentView.swift
//  FloatingLabelTextFieldDemo
//
//  Created by Hao Zhou on 11/9/19.
//  Copyright © 2019 Hao Zhou. All rights reserved.
//

import SwiftUI
import FloatingLabelTextField

struct ContentView: View {
  @State var name = ""
  @State var age = ""
  @State var password = ""
  
  var body: some View {
    VStack {
      FloatingLabelTextField(placeHolder: "Input your name", text: $name)
      FloatingLabelTextField(placeHolder: "Input your age", text: $age)
      FloatingLabelTextField(placeHolder: "Password", text: $password, isSecure: true)

    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
