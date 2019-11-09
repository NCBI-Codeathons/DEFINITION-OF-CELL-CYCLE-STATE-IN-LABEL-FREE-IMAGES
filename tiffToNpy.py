# Load all tiff 
import glob
import matplotlib.pyplot as plt
import numpy as np
dataRoot='/project/hackathon/hackers03/shared/'
brightListDir=glob.glob(dataRoot+'tiled_256_bgsub_20X_50K_all/'+'*bright*')
RGB1ListDir=brightListDir.copy()
RGB2ListDir=brightListDir.copy()
RGB3ListDir=brightListDir.copy()
for l in range(len(RGB1ListDir)):
    RGB1ListDir[l]=RGB1ListDir[l].replace('brightfield','RGB_000000')
    RGB2ListDir[l]=RGB3ListDir[l].replace('brightfield','RGB_000001')
    RGB3ListDir[l]=RGB3ListDir[l].replace('brightfield','RGB_000002')


print(brightListDir[1])
print(RGB1ListDir[1])
print(RGB2ListDir[1])

dataTensor=np.zeros((len(brightListDir),4,256,256))
for l in range(len(brightListDir)):
    img=Image.open(brightListDir[l])
    img=img.resize((256,256))
    dataTensor[l,0,:,:]=np.array(img)

    img=Image.open(RGB1ListDir[l])
    img=img.resize((256,256))
    dataTensor[l,1,:,:]=np.array(img)
    
    img=Image.open(RGB2ListDir[l])
    img=img.resize((256,256))
    dataTensor[l,2,:,:]=np.array(img)
    
    img=Image.open(RGB3ListDir[l])
    img=img.resize((256,256))
    dataTensor[l,3,:,:]=np.array(img)
    
    
np.save(dataRoot+'tiled_tensor.npy',dataTensor)
