//
//  AppView.swift
//  Avocado
//
//  Created by Anthony on 31/10/24.
//

import SwiftUI

struct AppView: View {
  var body: some View {
    TabView {
      AvocadosView()
        .tabItem {
            Image("tabicon-branch")
            Text("Avocados")
        }
      ContentView()
        .tabItem {
            Image("tabicon-book")
            Text("Recipes")
        }
      RipeningStagesView()
        .tabItem {
            Image("tabicon-avocado")
            Text("Ripening")
        }
      SettingsView()
        .tabItem {
            Image("tabicon-settings")
            Text("Settings")
        }
    } //: TAB
    .tint(Color.green)


  }
}

#Preview {
    AppView()
}
