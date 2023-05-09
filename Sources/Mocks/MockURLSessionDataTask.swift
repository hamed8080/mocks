//
// MockURLSessionDataTask.swift
// Copyright (c) 2022 Mocks
//
// Created by Hamed Hosseini on 12/14/22

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
