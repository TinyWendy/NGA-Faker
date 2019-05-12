//
//  postTableViewCell.swift
//  NGAFaker
//
//  Created by TinyLiu on 2019/5/11.
//  Copyright © 2019 TinyLiu. All rights reserved.
//

import UIKit

protocol PostSelectionDelegate: class {
    func select(url: URL, topic: String)
}

class postTableViewCell: UITableViewCell {

    @IBOutlet weak var postTopicField: UILabel!
    @IBOutlet weak var authorField: UILabel!
    @IBOutlet weak var repliesField: UILabel!
    
    var postURL: URL?
    var delegate: PostSelectionDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        if selected {
            delegate?.select(url: postURL!, topic: self.postTopicField.text!)
        }
    }

}
