//
//  ViewController.swift
//  Kadai10
//
//  Created by Hiroatsu on 2021/11/04.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet private weak var tableView: UITableView!
    private var prefecturesArray: [String] = [
        "北海道", "青森県", "岩手県", "宮城県", "秋田県",
        "山形県", "福島県", "茨城県", "栃木県", "群馬県",
        "埼玉県", "千葉県", "東京都", "神奈川県", "新潟県",
        "富山県", "石川県", "福井県", "山梨県", "長野県",
        "岐阜県", "静岡県", "愛知県", "三重県", "滋賀県",
        "京都府", "大阪府", "兵庫県", "奈良県", "和歌山県",
        "鳥取県", "島根県", "岡山県", "広島県", "山口県",
        "徳島県", "香川県", "愛媛県", "高知県", "福岡県",
        "佐賀県", "長崎県", "熊本県", "大分県", "宮崎県",
        "鹿児島県", "沖縄県"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
    }
}
// MARK: UITableViewDataSource
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return prefecturesArray.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        // cellの背景色の設定
        if indexPath.row % 3 == 1 {
            cell.backgroundColor = .systemGreen
        } else if indexPath.row % 3 == 2 {
            cell.backgroundColor = .systemBlue
        } else {
            cell.backgroundColor = .systemRed
        }

        // swiftlint:disable:next force_cast
        let prefecturesLabel = cell.viewWithTag(1) as! UILabel
        prefecturesLabel.text = prefecturesArray[indexPath.row]

        // swiftlint:disable:next force_cast
        let numberLabel = cell.viewWithTag(2) as! UILabel
        numberLabel.text = "\(indexPath.row + 1)番目の都道府県です"
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
}
