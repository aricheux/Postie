import Foundation
import Combine

public class ResponseDecoder: TopLevelDecoder {

    public func decode<T>(_ type: T.Type, from: (data: Data, response: HTTPURLResponse)) throws -> T where T: Decodable {
        let decoder = ResponseDecoding(response: from.response, data: from.data)
        return try T(from: decoder)
    }
}
