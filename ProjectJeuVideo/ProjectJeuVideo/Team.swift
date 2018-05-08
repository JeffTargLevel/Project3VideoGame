//
//  Team.swift
//  ProjectJeuVideo
//
//  Created by Jean François Santolaria on 13/04/2018.
//

import Foundation

// Create class Team

class Team {
    var name: String
    var characters = [Character]()
    
    init(name: String) {
        self.name = name
    }
    
    var isAlive: Bool {
        var isLive = true
        var count = 0
        
        for character in characters {
            if character.isLife {
                count += 1
            }
        }
        
        if count == 0 {
            isLive = false
        }
        return isLive
    }
    
    static func addTeam() -> Team? {
        print("\nEntre le nom de ton équipe :")
        let name = Display.readText()
        let teamWithCharacters = Team(name: name)
        teamWithCharacters.createThreeCharacters()
        return teamWithCharacters
    }
    
    private func createCharacters() {
        print("Sélectionne ton personnage :"
            + "\n1. Combattant"
            + "\n2. Mage"
            + "\n3. Colosse"
            + "\n4. Nain")
        
        let characterToCreate = Display.readNumber(valueMax: 4)
        switch characterToCreate {
        case 1:
            characters.append(addFighter()!)
        case 2:
            characters.append(addMagus()!)
        case 3:
            characters.append(addColossus()!)
        case 4:
            characters.append(addDwarf()!)
        default:
            break
        }
    }
    
    private func createThreeCharacters() {
        while characters.count != 3 {
            createCharacters()
        }
    }
    
    private func addFighter() -> Fighter? {
        Character.editTheNameOfCharacter()
        return Fighter(name: Display.readText())
    }
    
    private func addMagus() -> Magus? {
        Character.editTheNameOfCharacter()
        return Magus(name: Display.readText())
    }
    
    private func addColossus() -> Colossus? {
        Character.editTheNameOfCharacter()
        return Colossus(name: Display.readText())
    }
    
    private func addDwarf() -> Dwarf? {
        Character.editTheNameOfCharacter()
        return Dwarf(name: Display.readText())
    }
}






