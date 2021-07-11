import XCTest
@testable import Postie

class GraphQLRequestCodingTests: XCTestCase {

    func test() {
        struct Foo: GraphQLRequest {
            struct Response: Decodable {
                struct Project: Decodable {

                }

                struct User: Decodable {

                }

                var projects: [Project]
                var users: [User]
            }

            struct Body: Encodable {

            }

            var body: Body

            @GraphQLQueryBuilder<Response>
            var request: GraphQLQuery {
                \Response.projects
                \Response.users
            }
        }
    }
}

@resultBuilder
struct GraphQLQueryBuilder<T> {

//    static func buildBlock<V>(_ components: KeyPath<T, V>...) -> GraphQLQuery {
//        fatalError()
//    }

    static func buildBlock<V1, V2>(_ c1: KeyPath<T, V1>, _ c2: KeyPath<T, V2>) -> GraphQLQuery {
        fatalError()
    }
}


struct GraphQLQuery {

}
