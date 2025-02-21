//
//  ContentView.swift
//  ScrumDinger
//
//  Created by Prabhdeep Singh on 03/01/25.
//

import SwiftUI

struct MeetingView: View {
    @Binding var scrum: DailyScrum
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 16.0)
                .fill(scrum.theme.mainColor)
            VStack {
                ProgressView(value: 5, total: 15)
                HStack {
                    VStack(alignment: .leading) {
                        Text("Seconds Elapsed")
                            .font(.caption)
                        Label("300", systemImage: "hourglass.tophalf.fill")
                    }
                    Spacer()
                    VStack(alignment: .trailing){
                        Text("Seconds Remaining")
                            .font(.caption)
                        Label("600", systemImage: "hourglass.bottomhalf.fill")
                    }
                }
                .accessibilityElement(children: .ignore)
                .accessibilityLabel("Time remaining") //children will be ignored and thse three modifieers
                .accessibilityValue("10 minutes")// will be used for accessibility
                Circle()
                    .strokeBorder(lineWidth: 24)
                HStack {
                    Text("Speaker 1 of 3")
                    Button(action: {}) {
                        Image(systemName: "forward.fill")
                    }
                    .accessibilityLabel("Next speaker")
                }
            }
        }
        .padding()
    }
}

#Preview {
    MeetingView(scrum: .constant(DailyScrum.sampleData[0]))
}
