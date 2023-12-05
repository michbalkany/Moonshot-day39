//
//  MissionView.swift
//  Moonshot
//
//  Created by Mich balkany on 11/15/23.
//

import SwiftUI

struct MissionView: View {
    
    struct CrewMember: Hashable {
        let role: String
        let astronaut: Astronaut
    }
    let mission: Mission
    let crew: [CrewMember]
    
    var body: some View {
        ScrollView {
            VStack {
                
                Image(mission.image)
                    .resizable()
                    .scaledToFit()
                    .containerRelativeFrame(.horizontal) { width, axis in
                        width * 0.6
                    }
                
                if let date = mission.launchDate {
                    Label(date.formatted(date: .complete, time: .omitted), systemImage: "calendar" )
                }
                
                VStack(alignment: .leading) {
                   
                    CustomDevider()
                    
                    Text("Mission Highlights")
                        .font(.title.bold())
                        .padding(.bottom, 5)
                    
                    Text(mission.description)
                    
                   CustomDevider()
                    
                    Text("Crew")
                        .font(.title.bold())
                        .padding(.bottom, 5)
                }
                .padding(.horizontal)
                
                
                }
                .padding(.bottom)
            }
            .navigationTitle(mission.displayName)
            .navigationBarTitleDisplayMode(.inline)
            .background(.darkBackground)
        }
        init(mission: Mission, astronauts: [String: Astronaut]) {
            self.mission = mission
            
            self.crew = mission.crew.map { member in
                if let astronaut = astronauts[member.name] {
                    return CrewMember(role: member.role, astronaut: astronaut)
                } else {
                    fatalError("Missing \(member.name)")
                }
            }
        }
    }
    
    #Preview {
        let missions: [Mission] = Bundle.main.decode("missions.json")
        let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
        
        return MissionView(mission: missions[0], astronauts: astronauts)
            .preferredColorScheme(.dark)
        
    }

