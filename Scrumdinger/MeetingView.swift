//
//  ContentView.swift
//  Scrumdinger
//
//  Created by InThing on 13.03.2024..
//

import SwiftUI

struct MeetingView:View {
    var body: some View {
        VStack {
            ProgressView(value: 5, total:15)
            HStack {
                VStack(alignment: .leading ){
                    Text("Seconds elapsed").font(.caption)     
                    Label("300", systemImage: "hourglass.tophalf.fill")
                }
                Spacer()
                VStack (alignment: .trailing ){
                    Text("Seconds Remaining").font(.caption)
                    Label("600", systemImage: "hourglass.bottomhalf.fill")
                }
            }
            //placeholder for circle
            .accessibilityElement(children: .ignore)
            .accessibilityLabel("Time remaining")
            .accessibilityValue("10 min")
            Circle()
                .strokeBorder(lineWidth: 24)
            //Footer
            HStack{
                Text("Speaker 1 of 3")
                Button(action: {})
                {
                    Image(systemName: "forward.fill")
                }
                .accessibilityLabel("Next speaker")
            }
        }
        .padding()    }
}


struct MeetingView_Previews:PreviewProvider {
    static var previews:some View {
        MeetingView()
    }
}
