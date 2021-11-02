//
//  ContentView.swift
//  Shared
//
//  Created by Matheus Gois on 02/11/21.
//

import SwiftUI

struct ContentView: View {

    @ObservedObject var socketHelper = SocketHelper()

    var body: some View {
        ZStack {
            Text("STATE: \(socketHelper.isOpen ? "ON" : "OFF")")
                .padding()

            Button("Connect") {
                socketHelper.connect()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension LocalizedStringKey.StringInterpolation {
    mutating func appendInterpolation(_ value: Bool) {
        appendInterpolation(String(value))
    }
}
