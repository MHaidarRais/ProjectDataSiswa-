//
//  AnggotakelasTableViewCell.swift
//  ProjectDataSiswa
//
//  Created by Haidar Rais on 11/16/17.
//  Copyright © 2017 Haidar Rais. All rights reserved.
//

import UIKit

class AnggotakelasTableViewCell: UITableViewCell {
    @IBOutlet weak var namalabel: UILabel!
    @IBOutlet weak var emaillabel: UILabel!
    @IBOutlet weak var kelaslabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
