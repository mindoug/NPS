//
//  State.swift
//  NPS
//
//  Created by David Douglas on 4/29/23.
//

import Foundation

struct State {
    var name: String
    var abbreviation: String
    var image: String
}

extension State {
    static func loadStateData() -> [State] {
        return [
            State(name: "Alabama",
                  abbreviation: "AL",
                  image: ""),
            State(name: "Alaska",
                  abbreviation: "AK",
                  image: ""),
            State(name: "Arizona",
                  abbreviation: "AZ",
                  image: ""),
            State(name: "Arkansas",
                  abbreviation: "AR",
                  image: ""),
            State(name: "California",
                  abbreviation: "CA",
                  image: ""),
            State(name: "Colorado",
                  abbreviation: "CO",
                  image: ""),
            State(name: "Connecticut",
                  abbreviation: "CT",
                  image: ""),
            State(name: "Delaware",
                  abbreviation: "DE",
                  image: ""),
            State(name: "Florida",
                  abbreviation: "FL",
                  image: ""),
            State(name: "Georgia",
                  abbreviation: "GA",
                  image: ""),
            State(name: "Hawaii",
                  abbreviation: "HI",
                  image: ""),
            State(name: "Idaho",
                  abbreviation: "ID",
                  image: ""),
            State(name: "Illinois",
                  abbreviation: "IL",
                  image: ""),
            State(name: "Indiana",
                  abbreviation: "IN",
                  image: ""),
            State(name: "Iowa",
                  abbreviation: "IA",
                  image: ""),
            State(name: "Kansas",
                  abbreviation: "KS",
                  image: ""),
            State(name: "Kentucky",
                  abbreviation: "KY",
                  image: ""),
            State(name: "Louisana",
                  abbreviation: "LA",
                  image: ""),
            State(name: "Maine",
                  abbreviation: "ME",
                  image: ""),
            State(name: "Maryland",
                  abbreviation: "MD",
                  image: ""),
            State(name: "Massachusetts",
                  abbreviation: "MA",
                  image: ""),
            State(name: "Michigan",
                  abbreviation: "MI",
                  image: ""),
            State(name: "Minnesota",
                  abbreviation: "MN",
                  image: ""),
            State(name: "Mississippi",
                  abbreviation: "MS",
                  image: ""),
            State(name: "Missouri",
                  abbreviation: "MO",
                  image: ""),
            State(name: "Montana",
                  abbreviation: "MT",
                  image: ""),
            State(name: "Nebraska",
                  abbreviation: "NE",
                  image: ""),
            State(name: "Nevada",
                  abbreviation: "NV",
                  image: ""),
            State(name: "New Hampshire",
                  abbreviation: "NH",
                  image: ""),
            State(name: "New Jersey",
                  abbreviation: "NJ",
                  image: ""),
            State(name: "New Mexico",
                  abbreviation: "NM",
                  image: ""),
            State(name: "New York",
                  abbreviation: "NY",
                  image: ""),
            State(name: "North Carolina",
                  abbreviation: "NC",
                  image: ""),
            State(name: "North Dakota",
                  abbreviation: "ND",
                  image: ""),
            State(name: "Ohio",
                  abbreviation: "OH",
                  image: ""),
            State(name: "Oklahoma",
                  abbreviation: "OK",
                  image: ""),
            State(name: "Oregon",
                  abbreviation: "OR",
                  image: ""),
            State(name: "Pennsylvania",
                  abbreviation: "PA",
                  image: ""),
            State(name: "Rhode Island",
                  abbreviation: "RI",
                  image: ""),
            State(name: "South Carolina",
                  abbreviation: "SC",
                  image: ""),
            State(name: "South Dakota",
                  abbreviation: "SD",
                  image: ""),
            State(name: "Tenessee",
                  abbreviation: "TN",
                  image: ""),
            State(name: "Texas",
                  abbreviation: "TX",
                  image: ""),
            State(name: "Utah",
                  abbreviation: "UT",
                  image: ""),
            State(name: "Vermont",
                  abbreviation: "VT",
                  image: ""),
            State(name: "Virginia",
                  abbreviation: "VA",
                  image: ""),
            State(name: "Washington",
                  abbreviation: "WA",
                  image: ""),
            State(name: "West Virginia",
                  abbreviation: "WV",
                  image: ""),
            State(name: "Wisconsin",
                  abbreviation: "WI",
                  image: ""),
            State(name: "Wyoming",
                  abbreviation: "WY",
                  image: "")
        ]
    }
}
