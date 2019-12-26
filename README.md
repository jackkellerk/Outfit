# Outfit
Created by Jack Kellerk and Stephen Petraitis

### Things to do:
- Since we cannot use GrabCut on very large images, ~3MB, and each phone has a different camera, we are going to need a way to resize and standardize the images. Using this method, we can probably have the rectangular box that GrabCut uses be static.

- Perhaps after the user takes a picture of themself, we can use cv.GC_INIT_WITH_MASK and have the user just color in an outline of themselves to use for the mask.

- Then we need to use a shape matching algorithm, then warp the image to match the shape of the person, then paste the head on the new image.