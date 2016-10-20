//
//  PessoaTableViewCell.swift
//  Minicurso
//
//  Created by ifsp on 19/10/16.
//  Copyright © 2016 com.ifsp. All rights reserved.
//

import UIKit

class PessoaTableViewCell: UITableViewCell {

    @IBOutlet weak var nomeLabel: UILabel!
    @IBOutlet weak var idadeLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
