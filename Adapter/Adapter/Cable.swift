//
//  Cable.swift
//  Adapter
//
//  Created by TTSY on 2018/8/22.
//  Copyright © 2018 TTSY. All rights reserved.
//

import Foundation

protocol VGA {
    func transferVideo()
}

protocol HDMI {
    func transferFullHD()
}

struct VGACable: VGA {
    func transferVideo() {
        print("# Transferring via VGA #")
    }
}

struct HDMICable: HDMI {
    func transferFullHD() {
        print("# Transferring via HDMI #")
    }
}

struct HDMIAdapter: VGA {
    
    let hdmi: HDMI
    
    func transferVideo() {
        hdmi.transferFullHD()
    }
    
}
