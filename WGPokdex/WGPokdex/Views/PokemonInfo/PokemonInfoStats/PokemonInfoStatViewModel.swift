//
//  PokemonInfoStatViewModel.swift
//  WGPokdex
//
//  Created by Wilton Garcia on 16/05/22.
//

import Foundation

class PokemonInfoStatsViewModel: ObservableObject{
    static let shared  = PokemonInfoStatsViewModel()
    
    
    @Published var baseHp = 0
    @Published var baseAttack = 0
    @Published var baseDefense = 0
    @Published var baseSpAttack = 0
    @Published var baseSpDeffense = 0
    @Published var baseSpeed = 0
    
    
    @Published var maxMinHp = 0
    @Published var maxMinAttack = 0
    @Published var maxMinDefense = 0
    @Published var maxMinSpAttack = 0
    @Published var maxMinSpDeffense = 0
    @Published var maxMinSpeed = 0
    
    @Published var maxHp = 0
    @Published var maxAttack = 0
    @Published var maxDefense = 0
    @Published var maxSpAttack = 0
    @Published var maxSpDeffense = 0
    @Published var maxSpeed = 0
    
    
    func loadPokemonData(pokemonId: Int){
        Network.shared.apollo.fetch(query: PokemonInfoQuery(id: pokemonId)){ result in
                switch result{
                case .success(let pokemonResult):
                    DispatchQueue.main.async {
                        if let pokemonStatus = pokemonResult.data?.status?.stats
                        {
                            self.baseHp = pokemonStatus[0].valor
                            self.baseAttack = pokemonStatus[1].valor
                            self.baseDefense = pokemonStatus[2].valor
                            self.baseSpAttack = pokemonStatus[3].valor
                            self.baseSpDeffense = pokemonStatus[4].valor
                            self.baseSpeed = pokemonStatus[5].valor
                            self.maxHp = self.calcMaxHPStatus(baseStat: pokemonStatus[0].valor)
                            self.maxAttack = self.calcMaxStatus(baseStat: pokemonStatus[1].valor)
                            self.maxDefense = self.calcMaxStatus(baseStat: pokemonStatus[2].valor)
                            self.maxSpAttack = self.calcMaxStatus(baseStat: pokemonStatus[3].valor)
                            self.maxSpDeffense = self.calcMaxStatus(baseStat: pokemonStatus[4].valor)
                            self.maxSpeed = self.calcMaxStatus(baseStat: pokemonStatus[5].valor)
                            self.maxMinHp = self.calcMaxMinHPStatus(baseStat: pokemonStatus[0].valor)
                            self.maxMinAttack = self.calcMaxMinStatus(baseStat: pokemonStatus[1].valor)
                            self.maxMinDefense = self.calcMaxMinStatus(baseStat: pokemonStatus[2].valor)
                            self.maxMinSpAttack = self.calcMaxMinStatus(baseStat: pokemonStatus[3].valor)
                            self.maxMinSpDeffense = self.calcMaxMinStatus(baseStat: pokemonStatus[4].valor)
                            self.maxMinSpeed = self.calcMaxMinStatus(baseStat: pokemonStatus[5].valor)
                        }

                    }
                case .failure(let error):
                    print(error)
                }
        }
    }
    
    private func calcMaxHPStatus(baseStat: Int) -> Int{
        return baseStat * 2 + 204
    }
    private func calcMaxMinHPStatus(baseStat: Int) -> Int{
        return baseStat * 2 + 110
    }
    
    
    private func calcMaxStatus(baseStat: Int) -> Int{
        var maxStat = Double(baseStat * 2 + 99) * 1.1
        maxStat.round(.down)
        return Int(maxStat)
    }
    
    private func calcMaxMinStatus(baseStat: Int) -> Int{
        var maxMinStat = Double((baseStat * 2 + 5)) * 0.9
        maxMinStat.round(.down)
        return Int(maxMinStat)
    }
}
