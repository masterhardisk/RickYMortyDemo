//
//  NetworkManager.swift
//  RickYMortyDemo
//
//  Created by MasterHardisk on 27/10/24.
//

import Network

class NetworkManager {
    static let shared = NetworkManager()
    
    enum ConnectionStatus {
        case connected
        case disconnected
        case unknown
    }
    
    private var monitor: NWPathMonitor
    private let queue = DispatchQueue.global(qos: .background)
    
    var isConnected: ConnectionStatus {
        switch monitor.currentPath.status {
        case .satisfied:
            print("Connected")
            return .connected
        case .unsatisfied:
            print("Disconnected")
            return .disconnected
        case .requiresConnection:
            return .unknown
        @unknown default:
            return .unknown
        }
        
    }
    
    private init() {
        self.monitor = NWPathMonitor()
        self.monitor.start(queue: queue)
    }

    deinit {
        monitor.cancel()
    }
    
    
}


