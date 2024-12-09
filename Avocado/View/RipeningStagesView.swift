//
//  RipeningStagesView.swift
//  Avocado
//
//  Created by Anthony on 31/10/24.
//

import SwiftUI

struct RipeningStagesView: View {
    //MARK: - PROPERTIES

  var ripeningStages: [Ripening] = ripeningData

    //MARK: - BODY
    var body: some View {
      ScrollView(.horizontal) {
        VStack {
          Spacer()
          HStack(alignment: .center, spacing: 26) {
            ForEach(ripeningStages) { item in
              RipeningView(ripening: item)
            }
          }
          Spacer()
        }
      }
      .padding(.vertical, 16)
      .padding(.horizontal, 26)
      .ignoresSafeArea()
    }
}

#Preview {
    RipeningStagesView()
}
