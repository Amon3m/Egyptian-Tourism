//
//  ViewController.swift
//  Egypt
//
//  Created by abdelmonem on 24/10/2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var descTxt: UILabel!
    @IBOutlet weak var imgView: UIImageView!
    var currentIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        // Do any additional setup after loading the view.
    }


    @IBAction func pervBtn(_ sender: Any) {
        currentIndex = (currentIndex - 1 + touristPlaces.count) % touristPlaces.count
        updateUI()    }
    @IBAction func nextBtn(_ sender: Any) {
        currentIndex = (currentIndex + 1) % touristPlaces.count
            updateUI()
    }
    func updateUI() {
        let touristPlace = touristPlaces[currentIndex]
        imgView.image = UIImage(named: touristPlace.imageName)
        descTxt.text = touristPlace.description
    }}

struct TouristPlace {
    var imageName: String
    var description: String
}

let touristPlaces: [TouristPlace] = [
    TouristPlace(imageName: "pyramids", description: "The Pyramids of Giza in Egypt, built over 4,500 years ago, include the Great Pyramid of Khufu, known for its precision and size, the Pyramid of Khafre with the Sphinx nearby, and the smaller Pyramid of Menkaure. These ancient wonders showcase the incredible engineering and historical significance of ancient Egypt."),
    TouristPlace(imageName: "karnak", description: "Karnak Temple, located in Luxor, Egypt, is a sprawling complex dedicated to the god Amun. It's renowned for its colossal columns, intricate hieroglyphs, and statues. Constructed over 3,000 years ago, it is a significant archaeological and historical site, providing insights into ancient Egyptian religion and architecture."),
    TouristPlace(imageName: "luxor", description: "Luxor Temple, located in Luxor, Egypt, is an ancient temple dedicated to the god Amun. It's known for its impressive statues and well-preserved hieroglyphs. Built around 1,400 BCE, this historical site offers insights into ancient Egyptian culture and religion."),
    TouristPlace(imageName: "sphinx", description: "The Sphinx is a famous ancient monument in Giza, Egypt. It is a colossal statue with the body of a lion and the head of a pharaoh, believed to represent Pharaoh Khafre. Carved from a single piece of limestone, it stands as a symbol of strength and wisdom. The Sphinx is intricately tied to the Pyramids of Giza, guarding the nearby Pyramid of Khafre. It's an enduring symbol of Egyptian art and civilization, attracting countless visitors and inspiring fascination and mystery for centuries.")
    ]
