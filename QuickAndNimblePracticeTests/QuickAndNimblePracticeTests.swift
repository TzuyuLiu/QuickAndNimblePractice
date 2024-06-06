//
//  QuickAndNimblePracticeTests.swift
//  QuickAndNimblePracticeTests
//
//  Created by 劉子瑜-20001220 on 2024/6/6.
//

import Quick
import Nimble

@testable import QuickAndNimblePractice
import UIKit

final class QuickAndNimblePracticeTests: QuickSpec {
    override class func spec() {
        var subject: MoviesTableViewController!

        // 開始測試案例
        describe("MovieTableViewControllerSpec") {
            // 在 MovieTableViewController 內的每個測試開始前運行
            beforeEach {
                subject = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MoviesTableViewController") as? MoviesTableViewController
                
                // 調用 viewdidload
                _ = subject.view
            }

            context("when view is loaded") {
                it("should have 8 moveis loaded") {
                    expect(subject.tableView.numberOfRows(inSection: 0)).to(equal(8))
                }
            }

            context("Table view") {
                var cell: UITableViewCell!

                beforeEach {
                    cell = subject.tableView(subject.tableView, cellForRowAt: IndexPath(row: 0, section: 0))
                }

                it("should show movie title and genre") {
                    expect(cell.textLabel?.text).to(equal("The Emoji Movie"))
                    expect(cell.detailTextLabel?.text).to(equal("Animation"))
                }
            }
        }
    }

}
