//
//  Park.swift
//  NPS
//
//  Created by Mindy Douglas on 4/29/23.
//

import Foundation

struct Park {
    var name: String
    var designation: String
    var description: String
    var state: String
    var images: [Image]
    var addresses: [Address]
}

struct Image {
    var image: String
    var credit: String
    var title: String
    var altText: String
    var caption: String
}

struct Address {
    var city: String
    var state: String
    var type: AddressType
}

enum AddressType {
    case physical
    case mailing
}

extension Park {
    static func loadParkData() -> [Park] {
       return [
        Park(name: "Birmingham Civil Rights",
             designation: "National Monument",
             description: "In 1963, images of snarling police dogs unleashed against non-violent protesters and of children being sprayed with high-pressure hoses appeared in print and television news around the world. These dramatic scenes of violent police aggression against civil rights protesters in Birmingham, Alabama were vivid examples of segregation and racial injustice in America.",
             state: "AL",
             image: [],
             address: [Address(city: "Birmingham", state: "AL", type: .physical)]),
        Park(name: "Freedom Riders",
             designation: "National Monument",
             description: "In 1961, a small interracial band of “Freedom Riders” challenged discriminatory laws requiring separation of the races in interstate travel. They were attacked by white segregationists, who firebombed the bus. Images of the attack appeared in hundreds of newspapers, shocking the American public and spurring the Federal Government to issue regulations banning segregation in interstate travel.",
             state: "AL",
             image: [],
             address: [Address(city: "Anniston", state: "AL", type: .physical)]),
        Park(name: "Horseshoe Bend",
             designation: "National Military Park",
             description: "On 27 March 1814, Major General Andrew Jackson ‘s army of 3,300 men attacked Chief Menawa’s 1,000 Red Stick Creek warriors fortified in a horseshoe shaped bend of the Tallapoosa River. Over 800 Red Sticks died that day. The battle ended the Creek War, resulted in a land cession of 23,000,000 acres to the United States and created a national hero of Andrew Jackson.",
             state: "AL",
             image: [],
             address: [Address(city: "Daviston", state: "AL", type: .physical)]),
        Park(name: "Little River Canyon",
             designation: "National Preserve",
             description: "Little River is unique because it flows for most of its length atop Lookout Mountain in northeast Alabama. Forested uplands, waterfalls, canyon rims and bluffs, pools, boulders, and sandstone cliffs offer settings for a variety of recreational activities. Natural resources and cultural heritage come together to tell the story of the Preserve, a special place in the Southern Appalachians.",
             state: "AL",
             image: [],
             address: [Address(city: "Fort Payne", state: "AL", type: .physical)]),
        Park(name: "Natchez Trace",
             designation: "National Scenic Trail",
             description: "The Natchez Trace National Scenic Trail is five sections of hiking trail running roughly parallel to the 444-mile long Natchez Trace Parkway scenic motor road. The foot trails total more than 60 miles and offer opportunities to explore wetlands, swamps, hardwood forest, and the history of the area. For What's Open What's Close visit www.nps.gov/natr/planyourvisit/what-is-open-what-is-closed.htm",
             state: "AL",
             image: [],
             address: [Address(city: "Tupelo", state: "MS", type: .physical)]),
        Park(name: "Natchez Trace",
             designation: "Parkway",
             description: "The Natchez Trace Parkway is a 444-mile recreational road and scenic drive through three states. It roughly follows the \"Old Natchez Trace\" a historic travel corridor used by American Indians, \"Kaintucks,\" European settlers, slave traders, soldiers, and future presidents. Today, people can enjoy not only a scenic drive but also hiking, biking, horseback riding, and camping along the Parkway.",
             state: "AL",
             image: [],
             address: [Address(city: "Tupelo", state: "MS", type: .physical)]),
        Park(name: "Russell Cave",
             designation: "National Monument",
             description: "Russell Cave National Monument is located at 3729 County Road 98 in Bridgeport, Alabama. It is situated in the northeast corner of Alabama, just south of the Tennessee state line.",
             state: "AL",
             image: [],
             address: [Address(city: "Bridgeport", state: "AL", type: .physical)]),
        Park(name: "Selma To Montgomery",
             designation: "National Historic Trail",
             description: "Established by Congress in 1996, the Selma to Montgomery National Historic Trail commemorates the people, events, and route of the 1965 Voting Rights March in Alabama. Led by Dr. Martin Luther King Jr., Black and White non-violent supporters fought for the right to vote in Central Alabama. Today, you can connect with this history and trace the events of these marches along the 54-mile trail.",
             state: "AL",
             image: [],
             address: [Address(city: "White Hall", state: "AL", type: .physical)]),
        Park(name: "Trail Of Tears",
             designation: "National Historic Trail",
             description: "Remember and commemorate the survival of the Cherokee people, forcefully removed from their homelands in Georgia, Alabama, and Tennessee to live in Indian Territory, now Oklahoma. They traveled by foot, horse, wagon, or steamboat in 1838-1839.",
             state: "AL",
             image: [],
             address: [Address(city: "Santa Fe", state: "NM", type: .physical)]),
        Park(name: "Tuskegee Airmen",
             designation: "National Historic Site",
             description: "Before the first African American military pilots became known as the \"Red Tails\" they wore striped tails as they began their flight training in the Army's PT-17 Stearman bi-plane. Their flying adventure started at Moton Field, in Tuskegee, Alabama, where the Army Air Corps conducted a military test to determine if African Americans could be trained to fly combat aircraft.",
             state: "AL",
             image: [],
             address: [Address(city: "Tuskegee", state: "AL", type: .physical)]),
        Park(name: "Tuskegee Institute",
             designation: "National Historic Site",
             description: "In 1881, Booker T. Washington arrived in Alabama and started building Tuskegee Institute both in reputation and literally brick by brick. He recruited the best and the brightest to come and teach here including George Washington Carver who arrived in 1896. Carver’s innovations in agriculture, especially with peanuts, expanded Tuskegee’s standing throughout the country. The story continues….",
             state: "AL",
             image: [],
             address: [Address(city: "Tuskegee Institute", state: "AL", type: .physical)]),
       ]
    }
}
