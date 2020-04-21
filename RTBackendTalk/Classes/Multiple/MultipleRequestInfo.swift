import Foundation
public struct MultipleRequestInfo<Foo> where Foo: Decodable {
    let request: RequestProtocol
    let codingStrategy: JSONDecoder.KeyDecodingStrategy
    
    public var responseType: Foo.Type {
        return Foo.self
    }

    public init(request: RequestProtocol,
                codingStrategy: JSONDecoder.KeyDecodingStrategy = .useDefaultKeys) {
        self.request = request
        self.codingStrategy = codingStrategy
    }
}
