//
//  ContentView.swift
//  Conf
//
//  Created by Derek Bronston on 7/26/22.
//

import SwiftUI

class ViewModel {
    func tell() {
        guard let appBundleVersion = Bundle.main.object(forInfoDictionaryKey: "TEST_KEY") as? String else {
            return
        }
        print(appBundleVersion)
    }
}

struct ContentView: View {
    let vm =  ViewModel()
    var body: some View {
        Text("Hello, world!")
            .padding()
            .onAppear {
                vm.tell()
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
