// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

public final class PokemonByIdQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query PokemonById($id: Int!) {
      pokemon_v2_pokemon_by_pk(id: $id) {
        __typename
        id
        name
      }
    }
    """

  public let operationName: String = "PokemonById"

  public var id: Int

  public init(id: Int) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["query_root"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("pokemon_v2_pokemon_by_pk", arguments: ["id": GraphQLVariable("id")], type: .object(PokemonV2PokemonByPk.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(pokemonV2PokemonByPk: PokemonV2PokemonByPk? = nil) {
      self.init(unsafeResultMap: ["__typename": "query_root", "pokemon_v2_pokemon_by_pk": pokemonV2PokemonByPk.flatMap { (value: PokemonV2PokemonByPk) -> ResultMap in value.resultMap }])
    }

    /// fetch data from the table: "pokemon_v2_pokemon" using primary key columns
    public var pokemonV2PokemonByPk: PokemonV2PokemonByPk? {
      get {
        return (resultMap["pokemon_v2_pokemon_by_pk"] as? ResultMap).flatMap { PokemonV2PokemonByPk(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "pokemon_v2_pokemon_by_pk")
      }
    }

    public struct PokemonV2PokemonByPk: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["pokemon_v2_pokemon"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(Int.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: Int, name: String) {
        self.init(unsafeResultMap: ["__typename": "pokemon_v2_pokemon", "id": id, "name": name])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: Int {
        get {
          return resultMap["id"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String {
        get {
          return resultMap["name"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }
    }
  }
}

public final class PokedexQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query Pokedex($limit: Int!) {
      pokemon_v2_pokemon(limit: $limit) {
        __typename
        id
        name
        pokemon_v2_pokemontypes {
          __typename
          pokemon_v2_type {
            __typename
            id
            name
          }
        }
      }
    }
    """

  public let operationName: String = "Pokedex"

  public var limit: Int

  public init(limit: Int) {
    self.limit = limit
  }

  public var variables: GraphQLMap? {
    return ["limit": limit]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["query_root"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("pokemon_v2_pokemon", arguments: ["limit": GraphQLVariable("limit")], type: .nonNull(.list(.nonNull(.object(PokemonV2Pokemon.selections))))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(pokemonV2Pokemon: [PokemonV2Pokemon]) {
      self.init(unsafeResultMap: ["__typename": "query_root", "pokemon_v2_pokemon": pokemonV2Pokemon.map { (value: PokemonV2Pokemon) -> ResultMap in value.resultMap }])
    }

    /// fetch data from the table: "pokemon_v2_pokemon"
    public var pokemonV2Pokemon: [PokemonV2Pokemon] {
      get {
        return (resultMap["pokemon_v2_pokemon"] as! [ResultMap]).map { (value: ResultMap) -> PokemonV2Pokemon in PokemonV2Pokemon(unsafeResultMap: value) }
      }
      set {
        resultMap.updateValue(newValue.map { (value: PokemonV2Pokemon) -> ResultMap in value.resultMap }, forKey: "pokemon_v2_pokemon")
      }
    }

    public struct PokemonV2Pokemon: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["pokemon_v2_pokemon"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(Int.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("pokemon_v2_pokemontypes", type: .nonNull(.list(.nonNull(.object(PokemonV2Pokemontype.selections))))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: Int, name: String, pokemonV2Pokemontypes: [PokemonV2Pokemontype]) {
        self.init(unsafeResultMap: ["__typename": "pokemon_v2_pokemon", "id": id, "name": name, "pokemon_v2_pokemontypes": pokemonV2Pokemontypes.map { (value: PokemonV2Pokemontype) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: Int {
        get {
          return resultMap["id"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String {
        get {
          return resultMap["name"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }

      /// An array relationship
      public var pokemonV2Pokemontypes: [PokemonV2Pokemontype] {
        get {
          return (resultMap["pokemon_v2_pokemontypes"] as! [ResultMap]).map { (value: ResultMap) -> PokemonV2Pokemontype in PokemonV2Pokemontype(unsafeResultMap: value) }
        }
        set {
          resultMap.updateValue(newValue.map { (value: PokemonV2Pokemontype) -> ResultMap in value.resultMap }, forKey: "pokemon_v2_pokemontypes")
        }
      }

      public struct PokemonV2Pokemontype: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["pokemon_v2_pokemontype"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("pokemon_v2_type", type: .object(PokemonV2Type.selections)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(pokemonV2Type: PokemonV2Type? = nil) {
          self.init(unsafeResultMap: ["__typename": "pokemon_v2_pokemontype", "pokemon_v2_type": pokemonV2Type.flatMap { (value: PokemonV2Type) -> ResultMap in value.resultMap }])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// An object relationship
        public var pokemonV2Type: PokemonV2Type? {
          get {
            return (resultMap["pokemon_v2_type"] as? ResultMap).flatMap { PokemonV2Type(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "pokemon_v2_type")
          }
        }

        public struct PokemonV2Type: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["pokemon_v2_type"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(Int.self))),
              GraphQLField("name", type: .nonNull(.scalar(String.self))),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(id: Int, name: String) {
            self.init(unsafeResultMap: ["__typename": "pokemon_v2_type", "id": id, "name": name])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: Int {
            get {
              return resultMap["id"]! as! Int
            }
            set {
              resultMap.updateValue(newValue, forKey: "id")
            }
          }

          public var name: String {
            get {
              return resultMap["name"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "name")
            }
          }
        }
      }
    }
  }
}

public final class PokemonInfoQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query PokemonInfo($id: Int!) {
      Description: pokemon_v2_pokemonspeciesflavortext(
        where: {pokemon_species_id: {_eq: $id}, pokemon_v2_language: {id: {_eq: 9}}, pokemon_v2_version: {id: {_eq: 7}}}
      ) {
        __typename
        flavor_text
      }
      PokemonData: pokemon_v2_pokemon_by_pk(id: $id) {
        __typename
        id
        name
        weight
        height
        Types: pokemon_v2_pokemontypes {
          __typename
          Type: pokemon_v2_type {
            __typename
            id
            name
          }
        }
      }
      Status: pokemon_v2_pokemon_by_pk(id: $id) {
        __typename
        Stats: pokemon_v2_pokemonstats {
          __typename
          id
          Valor: base_stat
        }
      }
      Evolutions: pokemon_v2_pokemonspecies_by_pk(id: $id) {
        __typename
        Chain: pokemon_v2_evolutionchain {
          __typename
          Pokeomon: pokemon_v2_pokemonspecies {
            __typename
            id
          }
        }
      }
    }
    """

  public let operationName: String = "PokemonInfo"

  public var id: Int

  public init(id: Int) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["query_root"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("pokemon_v2_pokemonspeciesflavortext", alias: "Description", arguments: ["where": ["pokemon_species_id": ["_eq": GraphQLVariable("id")], "pokemon_v2_language": ["id": ["_eq": 9]], "pokemon_v2_version": ["id": ["_eq": 7]]]], type: .nonNull(.list(.nonNull(.object(Description.selections))))),
        GraphQLField("pokemon_v2_pokemon_by_pk", alias: "PokemonData", arguments: ["id": GraphQLVariable("id")], type: .object(PokemonDatum.selections)),
        GraphQLField("pokemon_v2_pokemon_by_pk", alias: "Status", arguments: ["id": GraphQLVariable("id")], type: .object(Status.selections)),
        GraphQLField("pokemon_v2_pokemonspecies_by_pk", alias: "Evolutions", arguments: ["id": GraphQLVariable("id")], type: .object(Evolution.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(description: [Description], pokemonData: PokemonDatum? = nil, status: Status? = nil, evolutions: Evolution? = nil) {
      self.init(unsafeResultMap: ["__typename": "query_root", "Description": description.map { (value: Description) -> ResultMap in value.resultMap }, "PokemonData": pokemonData.flatMap { (value: PokemonDatum) -> ResultMap in value.resultMap }, "Status": status.flatMap { (value: Status) -> ResultMap in value.resultMap }, "Evolutions": evolutions.flatMap { (value: Evolution) -> ResultMap in value.resultMap }])
    }

    /// fetch data from the table: "pokemon_v2_pokemonspeciesflavortext"
    public var description: [Description] {
      get {
        return (resultMap["Description"] as! [ResultMap]).map { (value: ResultMap) -> Description in Description(unsafeResultMap: value) }
      }
      set {
        resultMap.updateValue(newValue.map { (value: Description) -> ResultMap in value.resultMap }, forKey: "Description")
      }
    }

    /// fetch data from the table: "pokemon_v2_pokemon" using primary key columns
    public var pokemonData: PokemonDatum? {
      get {
        return (resultMap["PokemonData"] as? ResultMap).flatMap { PokemonDatum(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "PokemonData")
      }
    }

    /// fetch data from the table: "pokemon_v2_pokemon" using primary key columns
    public var status: Status? {
      get {
        return (resultMap["Status"] as? ResultMap).flatMap { Status(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "Status")
      }
    }

    /// fetch data from the table: "pokemon_v2_pokemonspecies" using primary key columns
    public var evolutions: Evolution? {
      get {
        return (resultMap["Evolutions"] as? ResultMap).flatMap { Evolution(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "Evolutions")
      }
    }

    public struct Description: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["pokemon_v2_pokemonspeciesflavortext"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("flavor_text", type: .nonNull(.scalar(String.self))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(flavorText: String) {
        self.init(unsafeResultMap: ["__typename": "pokemon_v2_pokemonspeciesflavortext", "flavor_text": flavorText])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var flavorText: String {
        get {
          return resultMap["flavor_text"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "flavor_text")
        }
      }
    }

    public struct PokemonDatum: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["pokemon_v2_pokemon"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(Int.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("weight", type: .scalar(Int.self)),
          GraphQLField("height", type: .scalar(Int.self)),
          GraphQLField("pokemon_v2_pokemontypes", alias: "Types", type: .nonNull(.list(.nonNull(.object(`Type`.selections))))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: Int, name: String, weight: Int? = nil, height: Int? = nil, types: [`Type`]) {
        self.init(unsafeResultMap: ["__typename": "pokemon_v2_pokemon", "id": id, "name": name, "weight": weight, "height": height, "Types": types.map { (value: `Type`) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: Int {
        get {
          return resultMap["id"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String {
        get {
          return resultMap["name"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }

      public var weight: Int? {
        get {
          return resultMap["weight"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "weight")
        }
      }

      public var height: Int? {
        get {
          return resultMap["height"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "height")
        }
      }

      /// An array relationship
      public var types: [`Type`] {
        get {
          return (resultMap["Types"] as! [ResultMap]).map { (value: ResultMap) -> `Type` in `Type`(unsafeResultMap: value) }
        }
        set {
          resultMap.updateValue(newValue.map { (value: `Type`) -> ResultMap in value.resultMap }, forKey: "Types")
        }
      }

      public struct `Type`: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["pokemon_v2_pokemontype"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("pokemon_v2_type", alias: "Type", type: .object(`Type`.selections)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(type: `Type`? = nil) {
          self.init(unsafeResultMap: ["__typename": "pokemon_v2_pokemontype", "Type": type.flatMap { (value: `Type`) -> ResultMap in value.resultMap }])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// An object relationship
        public var type: `Type`? {
          get {
            return (resultMap["Type"] as? ResultMap).flatMap { `Type`(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "Type")
          }
        }

        public struct `Type`: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["pokemon_v2_type"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(Int.self))),
              GraphQLField("name", type: .nonNull(.scalar(String.self))),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(id: Int, name: String) {
            self.init(unsafeResultMap: ["__typename": "pokemon_v2_type", "id": id, "name": name])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: Int {
            get {
              return resultMap["id"]! as! Int
            }
            set {
              resultMap.updateValue(newValue, forKey: "id")
            }
          }

          public var name: String {
            get {
              return resultMap["name"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "name")
            }
          }
        }
      }
    }

    public struct Status: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["pokemon_v2_pokemon"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("pokemon_v2_pokemonstats", alias: "Stats", type: .nonNull(.list(.nonNull(.object(Stat.selections))))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(stats: [Stat]) {
        self.init(unsafeResultMap: ["__typename": "pokemon_v2_pokemon", "Stats": stats.map { (value: Stat) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// An array relationship
      public var stats: [Stat] {
        get {
          return (resultMap["Stats"] as! [ResultMap]).map { (value: ResultMap) -> Stat in Stat(unsafeResultMap: value) }
        }
        set {
          resultMap.updateValue(newValue.map { (value: Stat) -> ResultMap in value.resultMap }, forKey: "Stats")
        }
      }

      public struct Stat: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["pokemon_v2_pokemonstat"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(Int.self))),
            GraphQLField("base_stat", alias: "Valor", type: .nonNull(.scalar(Int.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: Int, valor: Int) {
          self.init(unsafeResultMap: ["__typename": "pokemon_v2_pokemonstat", "id": id, "Valor": valor])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: Int {
          get {
            return resultMap["id"]! as! Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        public var valor: Int {
          get {
            return resultMap["Valor"]! as! Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "Valor")
          }
        }
      }
    }

    public struct Evolution: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["pokemon_v2_pokemonspecies"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("pokemon_v2_evolutionchain", alias: "Chain", type: .object(Chain.selections)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(chain: Chain? = nil) {
        self.init(unsafeResultMap: ["__typename": "pokemon_v2_pokemonspecies", "Chain": chain.flatMap { (value: Chain) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// An object relationship
      public var chain: Chain? {
        get {
          return (resultMap["Chain"] as? ResultMap).flatMap { Chain(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "Chain")
        }
      }

      public struct Chain: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["pokemon_v2_evolutionchain"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("pokemon_v2_pokemonspecies", alias: "Pokeomon", type: .nonNull(.list(.nonNull(.object(Pokeomon.selections))))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(pokeomon: [Pokeomon]) {
          self.init(unsafeResultMap: ["__typename": "pokemon_v2_evolutionchain", "Pokeomon": pokeomon.map { (value: Pokeomon) -> ResultMap in value.resultMap }])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// An array relationship
        public var pokeomon: [Pokeomon] {
          get {
            return (resultMap["Pokeomon"] as! [ResultMap]).map { (value: ResultMap) -> Pokeomon in Pokeomon(unsafeResultMap: value) }
          }
          set {
            resultMap.updateValue(newValue.map { (value: Pokeomon) -> ResultMap in value.resultMap }, forKey: "Pokeomon")
          }
        }

        public struct Pokeomon: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["pokemon_v2_pokemonspecies"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(Int.self))),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(id: Int) {
            self.init(unsafeResultMap: ["__typename": "pokemon_v2_pokemonspecies", "id": id])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: Int {
            get {
              return resultMap["id"]! as! Int
            }
            set {
              resultMap.updateValue(newValue, forKey: "id")
            }
          }
        }
      }
    }
  }
}
