import Foundation

typealias JSONDictionary = [String: AnyObject]

class RepositoriesParser {
  func parseDictionary(_ data: Data?) -> Result? {
    if let data = data,
      let json = try? JSONDecoder().decode(Result.self, from: data) {
        return json
      }  else {
        return nil
    }
  }
    
  func repositoriesFromSearchResponse(_ data: Data?) -> [Repository]? {
    guard let result = parseDictionary(data) else {
      print("Error: couldn't parse result from data")
      return nil
    }
    
    return result.repos
  }
  
}
