# Outfit

### Things to do:
- An image segmentation algorithm to extract the models from the background: Mask RCNN
  - Source: https://github.com/matterport/Mask_RCNN
  - Next: Retrain a model to only recognize humans (that does it *really* well)
- A Pose machine algorithm to assign points to each joint: Human Pose Estimation using Tensorflow
  - Source: https://github.com/eldar/pose-tensorflow
  - Next: Take the 12 points and place them along the edge of the clothing pieces
- An image warping algorithm to warp the model's joint points to the user's joint points: Custom
   - Source: Combination of Delaunay Triangle and Bilinear Interpolation functions
- An algorithm to swap the head on the user onto the warped model's body: (not started)
- Then combine everything together! (not started)
