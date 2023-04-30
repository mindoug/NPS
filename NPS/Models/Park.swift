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
             images: [
                Image(image: "BirminghamCivilRights",
                      credit: "NPS Photo",
                      title: "Mural Sculpture of the four little girls",
                      altText: "4 separate statues of the four little girls who were killed in the 16th st Baptist Church bombing",
                      caption: "Hundreds of people visit Kelly Ingram Park each year to learn about the Civil Rights Movement in Birmingham")
             ],
             addresses: [Address(city: "Birmingham", state: "AL", type: .physical)]),
        Park(name: "Freedom Riders",
             designation: "National Monument",
             description: "In 1961, a small interracial band of “Freedom Riders” challenged discriminatory laws requiring separation of the races in interstate travel. They were attacked by white segregationists, who firebombed the bus. Images of the attack appeared in hundreds of newspapers, shocking the American public and spurring the Federal Government to issue regulations banning segregation in interstate travel.",
             state: "AL",
             images: [
                Image(image: "FreedomRiders",
                      credit: "NPS Photo",
                      title: "Greyhound Mural",
                      altText: "Colored Greyhound mural with historical information about the Freedom Riders",
                      caption: "Greyhound mural at the Anniston Greyhound Bus Depot.")
             ],
             addresses: [Address(city: "Anniston", state: "AL", type: .physical)]),
        Park(name: "Horseshoe Bend",
             designation: "National Military Park",
             description: "On 27 March 1814, Major General Andrew Jackson ‘s army of 3,300 men attacked Chief Menawa’s 1,000 Red Stick Creek warriors fortified in a horseshoe shaped bend of the Tallapoosa River. Over 800 Red Sticks died that day. The battle ended the Creek War, resulted in a land cession of 23,000,000 acres to the United States and created a national hero of Andrew Jackson.",
             state: "AL",
             images: [
                Image(image: "HorseshoeBend",
                      credit: "NPS Photo",
                      title: "Horseshoe Bend",
                      altText: "Aerial view of the horseshoe-shaped bend of the Tallapoosa River",
                      caption: "Aerial view of what Creek Indians called the \"horses flat foot\" shows the bend in the river that is the park's namesake.")
             ],
             addresses: [Address(city: "Daviston", state: "AL", type: .physical)]),
        Park(name: "Little River Canyon",
             designation: "National Preserve",
             description: "Little River is unique because it flows for most of its length atop Lookout Mountain in northeast Alabama. Forested uplands, waterfalls, canyon rims and bluffs, pools, boulders, and sandstone cliffs offer settings for a variety of recreational activities. Natural resources and cultural heritage come together to tell the story of the Preserve, a special place in the Southern Appalachians.",
             state: "AL",
             images: [
                Image(image: "LittleRiverCanyon",
                      credit: "NPS Photo",
                      title: "Little River Canyon in the Fall",
                      altText: "Fall Season in the Canyon",
                      caption: "Little River Canyon in the Fall")
             ],
             addresses: [Address(city: "Fort Payne", state: "AL", type: .physical)]),
        Park(name: "Natchez Trace",
             designation: "National Scenic Trail",
             description: "The Natchez Trace National Scenic Trail is five sections of hiking trail running roughly parallel to the 444-mile long Natchez Trace Parkway scenic motor road. The foot trails total more than 60 miles and offer opportunities to explore wetlands, swamps, hardwood forest, and the history of the area. For What's Open What's Close visit www.nps.gov/natr/planyourvisit/what-is-open-what-is-closed.htm",
             state: "AL",
             images: [
                Image(image: "NatchezTrace1",
                      credit: "NPS Photo",
                      title: "Potkopinu Section of the Natchez Trace National Scenic Trail",
                      altText: "Potkopinu Section of the Natchez Trace National Scenic Trail",
                      caption: "The Potkopinu section, between milepost 17 and 20, follows the historic Old Trace. The \"sunken\" nature of the trail is due to the footsteps of thousands of travelers between the 1780s and 1820s in the soft loess soil.")
             ],
             addresses: [Address(city: "Tupelo", state: "MS", type: .physical)]),
        Park(name: "Natchez Trace",
             designation: "Parkway",
             description: "The Natchez Trace Parkway is a 444-mile recreational road and scenic drive through three states. It roughly follows the \"Old Natchez Trace\" a historic travel corridor used by American Indians, \"Kaintucks,\" European settlers, slave traders, soldiers, and future presidents. Today, people can enjoy not only a scenic drive but also hiking, biking, horseback riding, and camping along the Parkway.",
             state: "AL",
             images: [
                Image(image: "NatchezTrace2",
                      credit: "NPS Photo",
                      title: "Old Trace (milepost 221.4) on the Natchez Trace Parkway",
                      altText: "A foggy section of the Old Trace in autumn",
                      caption: "The \"Old Trace,\" the historic trail commemorated by the Natchez Trace Parkway today, still survives in segments. The Old Trace was the main road through the Old Southwest, connecting Natchez to Nashville by going through Chickasaw and Choctaw lands.")
             ],
             addresses: [Address(city: "Tupelo", state: "MS", type: .physical)]),
        Park(name: "Russell Cave",
             designation: "National Monument",
             description: "Russell Cave National Monument is located at 3729 County Road 98 in Bridgeport, Alabama. It is situated in the northeast corner of Alabama, just south of the Tennessee state line.",
             state: "AL",
             images: [
                Image(image: "RussellCave",
                      credit: "NPS Photo / Mary Dawson",
                      title: "Russell Cave in Spring",
                      altText: "Russell Cave in Spring",
                      caption: "Prehistoric people continuously used Russell Cave for over 10,000 years")
             ],
             addresses: [Address(city: "Bridgeport", state: "AL", type: .physical)]),
        Park(name: "Selma To Montgomery",
             designation: "National Historic Trail",
             description: "Established by Congress in 1996, the Selma to Montgomery National Historic Trail commemorates the people, events, and route of the 1965 Voting Rights March in Alabama. Led by Dr. Martin Luther King Jr., Black and White non-violent supporters fought for the right to vote in Central Alabama. Today, you can connect with this history and trace the events of these marches along the 54-mile trail.",
             state: "AL",
             images: [
                Image(image: "SelmaToMontgomery",
                      credit: "NPS Photo",
                      title: "50th Anniversary Walking Classroom",
                      altText: "50th Anniversary Walking Classroom Participants.",
                      caption: "During the 50th Anniversary Walking Classroom event participants marched nearly 54-miles from Selma to Montgomery.")
             ],
             addresses: [Address(city: "White Hall", state: "AL", type: .physical)]),
        Park(name: "Trail Of Tears",
             designation: "National Historic Trail",
             description: "Remember and commemorate the survival of the Cherokee people, forcefully removed from their homelands in Georgia, Alabama, and Tennessee to live in Indian Territory, now Oklahoma. They traveled by foot, horse, wagon, or steamboat in 1838-1839.",
             state: "AL",
             images: [
                Image(image: "TrailOfTears",
                      credit: "NPS",
                      title: "Brown's Ferry Tavern, Chattanooga, Tennessee",
                      altText: "structure in the background with large chimney on the end; signs saying Brown's Ferry Tavern",
                      caption: "Cherokee leader John Brown, who owned 640 acres in this area, ordered the construction of Browns Ferry Tavern in 1803. In 1838, the road running past this structure was the route by which several Cherokee detachments were removed to present-day Oklahoma.")
             ],
             addresses: [Address(city: "Santa Fe", state: "NM", type: .physical)]),
        Park(name: "Tuskegee Airmen",
             designation: "National Historic Site",
             description: "Before the first African American military pilots became known as the \"Red Tails\" they wore striped tails as they began their flight training in the Army's PT-17 Stearman bi-plane. Their flying adventure started at Moton Field, in Tuskegee, Alabama, where the Army Air Corps conducted a military test to determine if African Americans could be trained to fly combat aircraft.",
             state: "AL",
             images: [
                Image(image: "TuskegeeAirmen",
                      credit: "NPS Photo",
                      title: "The \"Duchess Arlene\" -  flown by Robert Williams, Pilot class",
                      altText: "Red-Tail P-51D Mustang In Flight Exhibit",
                      caption: "One of the most beloved and recognized airplanes of World War II -  North American P-51D Mustang")
             ],
             addresses: [Address(city: "Tuskegee", state: "AL", type: .physical)]),
        Park(name: "Tuskegee Institute",
             designation: "National Historic Site",
             description: "In 1881, Booker T. Washington arrived in Alabama and started building Tuskegee Institute both in reputation and literally brick by brick. He recruited the best and the brightest to come and teach here including George Washington Carver who arrived in 1896. Carver’s innovations in agriculture, especially with peanuts, expanded Tuskegee’s standing throughout the country. The story continues….",
             state: "AL",
             images: [
                Image(image: "TuskegeeInstitute",
                      credit: "NPS Photo",
                      title: "The Oaks - The Home of Booker T. Washington",
                      altText: "A three story Queen Anne Revival style red brick house",
                      caption: "This house, like Washington himself, was a lesson plan to both students and benefactors of Tuskegee Institute.")
             ],
             addresses: [Address(city: "Tuskegee Institute", state: "AL", type: .physical)]),
       ]
    }
}
