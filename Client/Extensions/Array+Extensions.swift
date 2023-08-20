// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at http://mozilla.org/MPL/2.0/

import Foundation

extension Array where Element: Equatable {
    func elementAfter(_ element: Element) -> Element? {
        guard let currentIndex = firstIndex(of: element) else {
            return nil
        }

        let nextIndex = index(after: currentIndex)

        guard nextIndex < endIndex else {
            return nil
        }

        return self[nextIndex]
    }

    func elementBefore(_ element: Element) -> Element? {
        guard let currentIndex = firstIndex(of: element) else {
            return nil
        }

        let previousIndex = index(before: currentIndex)

        guard previousIndex >= startIndex else {
            return nil
        }

        return self[previousIndex]
    }
}
