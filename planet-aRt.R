# My attempt at making some pretty things for my website with code


# Install aRtsy (art generator via machine learning) and MetBrewer (color pallets from MoMA pieces)
install.packages("aRtsy")
install.packages("MetBrewer")

# Load packages
library(aRtsy)
library(MetBrewer)

# Generate color pallete from "Junngfrau", Mönch, and Eiger, 1851, Carl Morgenstern, German (https://www.metmuseum.org/art/collection/search/440360)
pink_pallette <- met.brewer("Morgenstern", 2)

set.seed(1)

# Use aRtsy to make planet art using cell automota
artwork <- canvas_planet(colors = pink_pallette)

saveCanvas(artwork, filename = "myArtwork.png")
