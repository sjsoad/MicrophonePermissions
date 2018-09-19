//
//  MicrophonePermissions.swift
//  SKUtilsSwift
//
//  Created by Sergey Kostyan on 01.10.16.
//  Copyright © 2016 Sergey Kostyan. All rights reserved.
//

import UIKit
import AVFoundation

public protocol MicrophonePermissions {
    
    typealias PermissionsState = AVAudioSession.RecordPermission
    
    func requestPermissions(handler: @escaping (PermissionsState) -> Void)
    func permissionsState() -> PermissionsState
}

open class DefaultMicrophonePermissions: MicrophonePermissions {
    
    public init() {}
    
    public func requestPermissions(handler: @escaping (PermissionsState) -> Void) {
        AVAudioSession.sharedInstance().requestRecordPermission { _ in
            DispatchQueue.main.async { [weak self] in
                guard let `self` = self else { return }
                handler(self.permissionsState())
            }
        }
    }
    
    public func permissionsState() -> PermissionsState {
        return AVAudioSession.sharedInstance().recordPermission()
    }
    
}

