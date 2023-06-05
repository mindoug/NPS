//
//  ALPark.swift
//  NPS
//
//  Created by Mindy Douglas on 5/1/23.
//

import Foundation

struct Park: Codable, Equatable {
    var name: String
    var designation: String
    var description: String
    var image: String
    var state: String
}

extension Park {
    static func loadParkData() -> [Park] {
        return [
        Park(name: "Birmingham Civil Rights",
               designation: "National Monument",
               description: "In 1963, images of snarling police dogs unleashed against non-violent protesters and of children being sprayed with high-pressure hoses appeared in print and television news around the world. These dramatic scenes of violent police aggression against civil rights protesters in Birmingham, Alabama were vivid examples of segregation and racial injustice in America.",
               image: "BirminghamCivilRights",
               state: "Birmingham, AL"),
        Park(name: "Freedom Riders",
               designation: "National Monument",
               description: "In 1961, a small interracial band of “Freedom Riders” challenged discriminatory laws requiring separation of the races in interstate travel. They were attacked by white segregationists, who firebombed the bus. Images of the attack appeared in hundreds of newspapers, shocking the American public and spurring the Federal Government to issue regulations banning segregation in interstate travel.",
               image: "FreedomRiders",
               state: "Anniston, AL"),
        Park(name: "Horseshoe Bend",
               designation: "National Millitary Park",
               description: "On 27 March 1814, Major General Andrew Jackson ‘s army of 3,300 men attacked Chief Menawa’s 1,000 Red Stick Creek warriors fortified in a horseshoe shaped bend of the Tallapoosa River. Over 800 Red Sticks died that day. The battle ended the Creek War, resulted in a land cession of 23,000,000 acres to the United States and created a national hero of Andrew Jackson.",
               image: "HorseshoeBend",
               state: "Daviston, AL"),
        Park(name: "Little River Canyon",
               designation: "National Preserve",
               description: "Little River is unique because it flows for most of its length atop Lookout Mountain in northeast Alabama. Forested uplands, waterfalls, canyon rims and bluffs, pools, boulders, and sandstone cliffs offer settings for a variety of recreational activities. Natural resources and cultural heritage come together to tell the story of the Preserve, a special place in the Southern Appalachians.",
               image: "LittleRiverCanyon",
               state: "Fort Payne, AL"),
        Park(name: "Natchez Trace",
               designation: "National Scenic Trail",
               description: "The Natchez Trace National Scenic Trail is five sections of hiking trail running roughly parallel to the 444-mile long Natchez Trace Parkway scenic motor road. The foot trails total more than 60 miles and offer opportunities to explore wetlands, swamps, hardwood forest, and the history of the area. For What's Open What's Close visit www.nps.gov/natr/planyourvisit/what-is-open-what-is-closed.htm",
               image: "NatchezTrace1",
               state: "AL"),
        Park(name: "Russell Cave",
               designation: "National Monument",
               description: "Russell Cave National Monument is located at 3729 County Road 98 in Bridgeport, Alabama. It is situated in the northeast corner of Alabama, just south of the Tennessee state line.",
               image: "RussellCave",
               state: "Bridgeport, AL"),
        Park(name: "Selma to Montgomery",
               designation: "National Historic Trail",
               description: "Established by Congress in 1996, the Selma to Montgomery National Historic Trail commemorates the people, events, and route of the 1965 Voting Rights March in Alabama. Led by Dr. Martin Luther King Jr., Black and White non-violent supporters fought for the right to vote in Central Alabama. Today, you can connect with this history and trace the events of these marches along the 54-mile trail.",
               image: "SelmaToMontgomery",
               state: "AL"),
        Park(name: "Trail of Tears",
               designation: "National Historic Trail",
               description: "Remember and commemorate the survival of the Cherokee people, forcefully removed from their homelands in Georgia, Alabama, and Tennessee to live in Indian Territory, now Oklahoma. They traveled by foot, horse, wagon, or steamboat in 1838-1839.",
               image: "TrailOfTears",
               state: "AL"),
        Park(name: "Tuskegee Airmen",
               designation: "National Historic Park",
               description: "Before the first African American military pilots became known as the \"Red Tails\" they wore striped tails as they began their flight training in the Army's PT-17 Stearman bi-plane. Their flying adventure started at Moton Field, in Tuskegee, Alabama, where the Army Air Corps conducted a military test to determine if African Americans could be trained to fly combat aircraft.",
               image: "TuskegeeInstitute",
               state: "Tuskegee, AL")
        ]
    }
}
