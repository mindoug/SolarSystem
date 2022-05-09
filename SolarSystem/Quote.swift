//
//  Quote.swift
//  SolarSystem
//
//  Created by Mindy Douglas on 5/8/22.
//

import Foundation

struct Quote {

 var quotes: [String] = [
    
    """
    "It's time for the human race to enter the solar system." - Dan Quayle
    """,
    """
    "We have the most beautiful planet in our solar system. None other can sustain life like we know it. No other has blue water and white clouds covering colorful landmasses filled with thriving, beautiful living things like human beings." - Sunita Williams
    """,
    """
    "The world, when you look at it, can't be random. I mean, it's so different than the vast emptiness that is everything else, and even all the other planets we've seen in our solar system, none of them even remotely resemble the precious life-giving nature of our own planet." - Chris Hadfield
    """,
    """
    "No one planet can tell us everything about the universe, but Neptune seems to hold more than its share of information about the formation of our own solar system, as well as the solar systems beyond." - Heidi Hammel
    """,
    """
    We should be ready to reach out beyond our planet and beyond our solar system to find out what's really going on out there." - Edgar Mitchell
    """,
    """
    Every observation that we make, every mission that we send to various places in the solar system is just taking us one step further to finding that truly inhabitable environment, a water-rich environment." - Heidi Hammel
    """,
    """
    "The cosmos is three times as old as the Earth. During most of creation's 14 billion year history, our solar system wasn't around. Nonetheless, the early universe still had the right stuff for life and contained worlds that were just as suitable for spawning biology and intelligence as our own." - Seth Shostak
    """,
    """
    "The moon and Mars were the two most likely candidates for life in the solar system; what exists beyond the solar system is mere guesswork." - Walter Lang
    """,
    """
    "Without Jupiter cleaning out the early solar system, the Earth would be pock-marked with meteor collisions. We would suffer from asteroid impacts ever day." - Michio Kaku
    """,
    """
    For most of us, the thought of travelling to another galaxy probably seems like science fiction.  But the truth is, the foundation for humankind's journey beyond the Earth's solar system is being laid right now aboard our very own International Space Station." - Victor J. Glover
    """,
    """
    "Our solar system is actually a wild frontier, teeming with different, diverse places: planets and moons, millions of objects of ice and rock." - Carrie Nugent
    """,
    """
    “Exploration is in our nature. We began as wanderers, and we are wanderers still. We have lingered long enough on the shores of the cosmic ocean. We are ready at last to set sail for the stars.”
    ― Carl Sagan, Cosmos
    """
 ]
  
 
    // lazy var lets you delay initializing stored properties. It is initialized the first time the property is called.
  
  lazy var randomQuote = quotes.randomElement()!
  
}

