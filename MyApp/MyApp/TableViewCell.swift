//
//  TableViewCell.swift
//  MyApp
//
//  Created by TTN on 12/03/20.
//  Copyright © 2020 TTN. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    @IBOutlet weak var imga : UIImageView!
    @IBOutlet weak var name : UILabel!
    @IBOutlet weak var address : UILabel!
    @IBOutlet weak var age : UILabel!
    @IBOutlet weak var detail : UILabel!
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        imga.layer.cornerRadius = imga.frame.height/2
        imga.contentMode = .scaleToFill
        imga.clipsToBounds = true
        // Configure the view for the selected state
    }
    func configureCell(text1:String, text2:String, text3:String, text4:String, img:UIImage)
    {
        self.name.text = text1
        self.address.text = text2
        self.age.text = text3
        self.detail.text = text4
        self.imga.image = img
    }
}
