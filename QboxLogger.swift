//
//  QboxLogger.swift
//  QboxCallSDK
//
//  Created by Tileubergenov Nurken on 02.09.2024.
//

import Foundation

public struct QBoxLog {
  static func print(_ message: String) {
    DispatchQueue.main.async {
      debugPrint(message)
    }
  }
  
  static func error(_ module: String, _ message: String) {
    QBoxLog.print("ERROR Qbox." + module + ": " + message)
  }
  
  static func debug(_ module: String, _ message: String) {
    QBoxLog.print("Qbox." + module + "." + message)
  }
}
