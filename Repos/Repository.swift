import Foundation

struct Repository: Decodable {
  let id: Int
  let name: String
  let description: String
  let htmlURL: String?
  
  enum CodingKeys : String, CodingKey {
    case id
    case name
    case description
    case htmlURL = "html_url"
  }
}
