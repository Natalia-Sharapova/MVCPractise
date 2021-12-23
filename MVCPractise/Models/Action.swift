//
//  Action.swift
//  MVCPractise
//
//  Created by Наталья Шарапова on 16.12.2021.
//

import UIKit

struct Action {
    var name: String
    var description: String
    var rating: Int
    var price: Int
    var image: UIImage
    
}

extension Action {
    var stars: String {
        return String(repeating: "⭐️", count: rating)
    }
}

extension Action {
    
    static var listAction: [Action] {
        
        return [
            Action(name: "Chorus", description: "Once the best fighter of the Circle, now she has become its most formidable opponent. Join Nara and Forsaken on their journey, rally the forces of the Resistance, fight the Prophet and save the universe from tyranny.", rating: 6, price: 725, image: UIImage(named: "chorus")!),
            
            Action(name: "Thunder Tier One", description: "Thunder Tier One is a realistic top-down shooter. You will join an elite special forces squad and try to stop a dangerous terrorist organization wreaking havoc in Silabia, a fictional Eastern European state.", rating: 8, price: 699, image: UIImage(named: "thunder")!),
            
            Action(name: "After the Fall®", description: "VR first-person shooter from the creators of Arizona Sunshine®. Huge hostile world and up to 4 players in an epic battle for survival.", rating: 6, price: 652, image: UIImage(named: "afterhefall")!),
            
            Action(name: "Battlefield™ 2042", description: "Battlefield ™ 2042 is a first-person shooter that returns the series to legendary epic action. In a chaotic future, adapt and thrive on ever-changing battlegrounds with your squad and arsenal of the latest technology.", rating: 9, price: 2302, image: UIImage(named: "battlefield")!),
            
            Action(name: "Century: Age of Ashes", description: "Century: Age of Ashes is a free, team-based, online 6-on-6 shooter with dragons. Develop your skills with different classes and dragons, take part in hot arena battles", rating: 7, price: 639, image: UIImage(named: "century")!),
            
            Action(name: "Marvel's Guardians of the Galaxy", description: "Go roaming space with the Guardians of the Galaxy Marvel! Take on the role of Star-Lord in this action-adventure adventure as you lead a quirky team that will shape the fate of the galaxy! You can handle it. Probably.", rating: 8, price: 1624, image: UIImage(named: "guardians")!),
            
            Action(name: "Gunfire Reborn", description: "Gunfire Reborn is a multi-level adventure game with RPG, Roguelite and First Person Shooter (FPS) elements. Players can control heroes with different abilities to explore varied gameplay.", rating: 8, price: 625, image: UIImage(named: "gunfire")!),
            
            Action(name: "New World", description: "Explore a thrilling, open-world MMO filled with danger and opportunity where you'll forge a new destiny on the supernatural island of Aeternum.", rating: 8, price: 1300, image: UIImage(named: "newworld")!),
            
            Action(name: "Back 4 Blood", description: "Back 4 Blood is an exciting cooperative first-person shooter from the creators of the critically acclaimed Left 4 Dead franchise.", rating: 7, price: 1999, image: UIImage(named: "back4blood")!),
            
            Action(name: "World War Z", description: "World War Z: Aftermath is a stunning cooperative zombie shooter and a new stage in the evolution of the hit game World War Z, which has charmed more than 15 million players. Fight off hordes of bloodthirsty zombies in intense story sequences in zombie-ravaged locations.", rating: 8, price: 899, image: UIImage(named: "worldwarz")!),
            
            Action(name: "Counter-Strike: Global Offensive", description: "Counter-Strike: Global Offensive (CS:GO) expands the boundaries of the hurricane team game introduced 19 years ago. CS:GO includes new maps, characters, weapons and game modes, as well as improves the classic CS component", rating: 9, price: 0, image: UIImage(named: "cs")!),
            
            Action(name: "PUBG", description: "PLAYERUNKNOWN'S BATTLEGROUNDS is a shooter in which the last surviving participant wins. Fly, explore the surroundings, find weapons, supplies and become the only survivor. It's A BATTLE ROYALE!", rating: 9, price: 949, image: UIImage(named: "pubg")!),
            
            Action(name: "Rust", description: "The only aim in Rust is to survive. Everything wants you to die - the island’s wildlife and other inhabitants, the environment, other survivors. Do whatever it takes to last another night.", rating: 10, price: 1465, image: UIImage(named: "rust")!)
        ]
    }
}
