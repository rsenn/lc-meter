#!/usr/bin/env python

import pyit
import Image # this is part of the PIL

image = Image.open('eagle/Headphone-Amplifier-ClassAB-long-board.svg')

# Black and white
# Getting a black and white image from the original one
#new_image = pyit.black_and_white(image)
#new_image.save('foo_black_and_white.jpg')
#
## Grayscale
## Getting a grayscale image from the original one
#new_image = pyit.grayscale(image)
#new_image.save('foo_grayscale.jpg')
#
## Crop and resize
## Getting a 800px x 600px image from the original one
#new_image = pyit.resize_and_crop(image, 800, 600)
#new_image.save('foo_800x600.jpg')
#
# Converting to SVG
# Getting SVC source from and image.
svg_source = pyit.svg_source(image)
svg_file = open('Headphone-Amplifier-ClassAB-long-board.svg', 'w')
svg_file.write(svg_source)
svg_file.close()
