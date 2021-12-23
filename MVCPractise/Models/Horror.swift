//
//  Model.swift
//  MVCPractise
//
//  Created by Наталья Шарапова on 09.12.2021.
//

import UIKit

struct Horror {
    var name: String
    var description: String
    var rating: Int
    var price: Int
    var image: UIImage
}

extension Horror {
    var stars: String {
        return String(repeating: "⭐️", count: rating)
    }
}

extension Horror {
    static var listHorror: [Horror] {
        return [
            Horror(name: "Inscryption", description: "Inscryption is a dark card adventure in which roguelike decks, puzzles in the spirit of quest rooms and psychological horror mixed into a blood-soaked cocktail.And the secrets of what is written on the cards are even darker...", rating: 8, price: 439, image: UIImage(named: "inscryption")!),
            
            Horror(name: "RESIDENT EVIL VILLAGE", description: "Ethan Winters and his wife Mia have settled in a new place, far from the horrors of the past. But the couple did not have time to enjoy a serene life, as tragedy befell them again.", rating: 9, price: 999, image: UIImage(named: "RE")!),
            
            Horror(name: "Phasmophobia", description: "Phasmophobia is a 4 player online co-op psychological horror. Paranormal activity is on the rise and it’s up to you and your team to use all the ghost hunting equipment at your disposal in order to gather as much evidence as you can.", rating: 10, price: 309, image: UIImage(named: "phasmophobia")!),
            
            Horror(name: "Propnight", description: "Join an exciting party in Propnight, a multiplayer game combining the best of the two legendary genres of prop hunt and classic survival horror.", rating: 7, price: 435, image: UIImage(named: "propnight")!),
            
            Horror(name: "Call of Cthulhu", description: "The year is 1924. Private detective Edward Pierce is investigating the tragic death of the Hawkins family... Immerse yourself in the world of impending madness and cosmic horror. Secret clues, mysterious figures and outright horror will be a shock on the way to solving the otherworldly", rating: 8, price: 239, image: UIImage(named: "callOfCthulhu")!),
            
            Horror(name: "The Long Dark", description: "The Long Dark is an exploratory survival simulation game in which solo players must take care of themselves while exploring the vast frozen uninhabited territories that have survived a geomagnetic disaster. There are no zombies here - just you, the cold and all the dangers", rating: 10, price: 210, image: UIImage(named: "theLongDark")!),
            
            Horror(name: "Half-Life: Alyx", description: "Half-Life: Alyx is Valve's return to the Half-Life universe in virtual reality. This is the story of an impossible fight against a brutal alien race known as the Alliance.", rating: 7, price: 1085, image: UIImage(named: "halfLife")!),
            
            Horror(name: "The Forest", description: "As the lone survivor of a passenger jet crash, you find yourself in a mysterious forest battling to stay alive against a society of cannibalistic mutants. Build, explore, survive in this terrifying first person survival horror simulator.", rating: 9, price: 435, image: UIImage(named: "forest")!),
            
            Horror(name: "GTFO", description: "In the extreme GTFO team shooter, you must fight as a unit - or you will all lie in this creepy underground prison. And to succeed, remember the four C rule: speed, stealth, strategy, well-coordinated teamwork.", rating: 9, price: 1011, image: UIImage(named: "GTFO")!),
            
            Horror(name: "The Sinking City", description: "In the 1920s, the town of Mont on the East Coast of the United States was under the power of supernatural forces. You, in the role of a private detective, must find out the truth about what the city is obsessed with and what has defiled the minds of the inhabitants ... and yours.", rating: 9, price: 199, image: UIImage(named: "theSinkingcity")!),
            
            Horror(name: "The Dark Pictures: House of Ashes", description: "After the Iraq War, a detachment in search of weapons of mass destruction finds a buried temple of the Sumerians with a nest of creepy creatures. To survive the night, the military will have to unite with former enemies.", rating: 8, price: 1249, image: UIImage(named: "thedarkpictures")!),
            
            Horror(name: "STALKER: Shadow of Chernobyl", description: "S.T.A.L.K.E.R.: The Shadow of Chernobyl tells about survival in the Zone - an extremely dangerous place where you need to be afraid not only of radiation, anomalies and deadly creatures, but also of other stalkers pursuing their own goals.", rating: 6, price: 599, image: UIImage(named: "stalker-1")!),
            
            Horror(name: "Tiny Bunny", description: "Bunny is a non-linear visual novel in the horror genre. Nothing will help anyone who has heard the voice of the forest.", rating: 7, price: 249, image: UIImage(named: "tinybunny")!),
            
            Horror(name: "The Beast Inside", description: "The Beast Inside is a fresh look at thriller and survival horror. Immerse yourself in a story full of secrets of the past, personal tragedies and madness. Play as two heroes with the same dark legacy. Fight, solve puzzles and experience horror in full 3D.", rating: 7, price: 46, image: UIImage(named: "theBeastInside")!),
            
            Horror(name: "Darkwood", description: "Darkwood is a new vision of the survival horror genre. Explore the rich, changing open world by day, and at night hide in a shelter and pray that morning will come as soon as possible.", rating: 8, price: 119, image: UIImage(named: "darkwood")!),
            
            Horror(name: "Alan Wake", description: "A Dark Presence stalks the small town of Bright Falls, pushing Alan Wake to the brink of sanity in his fight to unravel the mystery and save his love.", rating: 8, price: 360, image: UIImage(named: "alanWake")!),
            
            Horror(name: "Outlast", description: "Hell is an experiment you can't survive in Outlast, a first-person survival horror game developed by veterans of some of the biggest game franchises in history. As investigative journalist Miles Upshur, explore Mount Massive Asylum and try to survive long enough to discover its terrible secret", rating: 9, price: 435, image: UIImage(named: "outlast")!),
            
            Horror(name: "Labyrinthine", description: "Play with 1-4 players online as you solve puzzles, collect items and run from the horrors that lie within. Follow in the footsteps of Joan in the story mode or tackle procedurally generated maps that scale with your level and bring a fresh experience each game..", rating: 6, price: 259, image: UIImage(named: "labyrinthine")!),
            
            Horror(name: "Amnesia: Rebirth", description: "Overcoming despair and hopelessness, you have to test the strength of the human ability to endure suffering.", rating: 9, price: 515, image: UIImage(named: "amnesia")!),
            
            Horror(name: "Visage", description: "The Visage game is a psychological thriller from the first person. Explore a mysterious, ever-changing mansion in an atmospheric game world where time flows slowly, and incredibly cozy interiors are replaced by monstrously realistic scenes", rating: 8, price: 619, image: UIImage(named: "visage")!),
            
            Horror(name: "HORROR TALES: The Wine", description: "Explore a fantastic Mediterranean island that has survived a pandemic and overcome your fears! Explore the seemingly abandoned city and try to find a precious bottle of Banydebosc red wine to cure your loved ones.", rating: 7, price: 234, image: UIImage(named: "horrorTales")!)
        ]
    }
}
