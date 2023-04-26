import Foundation
import Additive

public extension HTTPURLResponse {
    static func defaultSuccess(request: URLRequest) -> HTTPURLResponse {
        return HTTPURLResponse(url: request.url!, statusCode: 200, httpVersion: "HTTP/1.1", headerFields: nil)!
    }

    func defualtBadRequest(request: URLRequest) -> HTTPURLResponse {
        return HTTPURLResponse(url: request.url!, statusCode: 500, httpVersion: "HTTP/1.1", headerFields: nil)!
    }
}

open class MockURLSession: URLSessionProtocol {
    public var data: Data?
    public var response: HTTPURLResponse?
    public var error: Error?
    public var nextDataTask = MockURLSessionDataTask()

    public init() {}

    public func dataTask(_ request: URLRequest, completionHandler: @escaping CompletionType) -> URLSessionDataTaskProtocol {
        completionHandler(data, response, error)
        return nextDataTask
    }
}
