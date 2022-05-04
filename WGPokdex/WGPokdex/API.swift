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
