//
//  SetinngsView.swift
//  Avocado
//
//  Created by Anthony on 31/10/24.
//

import SwiftUI

struct SettingsView: View {
    //MARK: - PROPERTIES

  @State private var enableNotification: Bool = true
  @State private var backgroundRefresh: Bool = false

    //MARK: - BODY
    var body: some View {
      VStack(alignment: .center, spacing: 0){
        // HEADER
        VStack(alignment: .center, spacing: 6){
          Image(.avocado)
            .resizable()
            .scaledToFit()
            .padding(.top, 16)
            .frame(width: 100, height: 100, alignment: .center)
            .shadow(color: .colorBlackTransparentLight, radius: 8, x: 0, y: 4)
          
          Text("Avocados".uppercased())
            .font(.system(.title, design: .serif))
            .fontWeight(.bold)
            .foregroundStyle(.colorGreenAdaptive)
        } //: VSTACK
        .padding()

        Form {
          // SECTION 1
          Section("General Settings") {
            Toggle(isOn: $enableNotification) {
              Text("Enable notifications")
            }
            Toggle(isOn: $backgroundRefresh) {
              Text("Background refresh")
            }
          }

          // SECTION 2
          Section("Application") {
            if enableNotification {
              HStack {
                Text("Product").foregroundStyle(.gray)
                Spacer()
                Text("Avocado Recipes")
              }

              HStack {
                Text("Compatibility").foregroundStyle(.gray)
                Spacer()
                Text("iPhone / iPad")
              }

              HStack {
                Text("Developer").foregroundStyle(.gray)
                Spacer()
                Text("Efimov Anton")
              }

              HStack {
                Text("Designer").foregroundStyle(.gray)
                Spacer()
                Text("Robert Petras")
              }

              HStack {
                Text("Website").foregroundStyle(.gray)
                Spacer()
                Text("swiftuimasterclass.com")
              }

              HStack {
                Text("Version").foregroundStyle(.gray)
                Spacer()
                Text("1.0.0")
              }
            } else {
              HStack {
                Text("Personal message").foregroundStyle(.gray)
                Spacer()
                Text("Happy Coding!")
              }
            }


          }
        }


      } // MAIN VSTACK
      .frame(maxWidth: 640)
    }
}

#Preview {
    SettingsView()
}
