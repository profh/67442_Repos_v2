import Foundation

struct Result: Decodable {
  let totalCount: Int
  let incompleteResults: Bool
  let repos: [Repository]
  
  enum CodingKeys : String, CodingKey {
    case totalCount = "total_count"
    case incompleteResults = "incomplete_results"
    case repos = "items"
  }
}
