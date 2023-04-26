import Additive

open class MockURLSessionDataTask: URLSessionDataTaskProtocol {
    private (set) var resumeWasCalled = false
    private (set) var cancelWasCalled = false

    public func resume() {
        resumeWasCalled = true
    }

    public func cancel() {
        cancelWasCalled = true
    }
}
