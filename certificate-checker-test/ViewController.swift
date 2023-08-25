//
//  ViewController.swift
//  certificate-checker-test
//
//  Created by Виктор on 10.08.2023.
//

import UIKit
import certificate_checker_package

class ViewController: UIViewController {
    
    var certificate = CertificateParserViewController(url: URL(string: "apple.com")!)

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(certificate.view)

        localization()
    }
    
    func localization() {
        LocalizationSystem.subject = NSLocalizedString("subject", comment: "")
        LocalizationSystem.commonName = NSLocalizedString("common_name", comment: "")
        LocalizationSystem.country = NSLocalizedString("country", comment: "")
        LocalizationSystem.organization = NSLocalizedString("organization", comment: "")
        LocalizationSystem.state = NSLocalizedString("state", comment: "")
        LocalizationSystem.organizationalUnit = NSLocalizedString("organizational_unit", comment: "")
        LocalizationSystem.issuer = NSLocalizedString("issuer", comment: "")
        LocalizationSystem.validityPeriod = NSLocalizedString("validity_period", comment: "")
        LocalizationSystem.validityBefore = NSLocalizedString("validity_before", comment: "")
        LocalizationSystem.validityAfter = NSLocalizedString("validity_after", comment: "")
        LocalizationSystem.validFor = NSLocalizedString("valid_for", comment: "")
        LocalizationSystem.willExpireIn = NSLocalizedString("will_expire_in", comment: "")
    }
}

