/// A type that should encode itself to a JSON representation.
public typealias GraphQLEncodable = Encodable & GraphQLFormatProvider & GraphQLBodyProvider

public protocol GraphQLBodyProvider {

    associatedtype Body: Encodable

    var body: Body { get }

}
