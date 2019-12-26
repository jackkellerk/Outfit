import numpy as np
import cv2 as cv
import tensorflow as tf
from matplotlib import pyplot as plt

img = cv.imread('rsz_jack.jpg')
mask = np.zeros(img.shape[:2],np.uint8)
bgdModel = np.zeros((1,65),np.float64)
fgdModel = np.zeros((1,65),np.float64)
rect = (30,30,350,900)
cv.grabCut(img,mask,rect,bgdModel,fgdModel,5,cv.GC_INIT_WITH_RECT)
mask2 = np.where((mask==2)|(mask==0),0,1).astype('uint8')
img = img*mask2[:,:,np.newaxis]
# This next line is needed because OpenCV reads images as BGR and matplotlib reads images as RGB
img = cv.cvtColor(img, cv.COLOR_BGR2RGB)
plt.imshow(img),plt.colorbar(),plt.show()