![](https://img.shields.io/badge/tensorflow-keras-orange) ![](https://img.shields.io/badge/-python%203-yellow) 

# DEFINITION OF CELL CYCLE STATE IN LABEL FREE IMAGES

![Explanation](FastFUCCI_HBEC76KT.PNG)
<img src="fucci.gif" width="280"/> <img src="fuccyr.gif" width="280"/> <img src="fuccyg.gif" width="280"/> 


Many cellular process are modulated by or in concert with the progression of the cell cycle from Mitosis (M) to Gap 1 (G1) to Synthesis (S) to Gap 2 (G2) phase. As a result, a snapshot of the molecular organization of such a process shows a heterogeneous picture, just because every cell is in a different phase of the cell cycle. To compensate for cell cycle related image variations the data should be aligned with the cell cycle phases. In 2008, Atsushi Miyawaki and his lab published a powerful probe, called FUCCI (Fluorescent Ubiquitination-based Cell Cycle Indicator), which indicates the progression of an individual cell through the cell cycle as a mixture of red and green fluorescence. However, probe occupies a large portion of the visible fluorescent spectrum, making it difficult to find other probes that do not spectrally overlap and thus could be used to concurrently monitor other cellular processes of interest. An alternative to FUCCI would be a label-free probe that extracts the identities of identifies the cell cycle state from the cytoplasmic and nuclear texture detectable in a non-fluorescence microscopy modality. The goal of this hackathon project is to test the possibility of establishing such a label-free probe. One suggested approach will be to train a convolutional neuronal network that either directly or indirectly, through definition of a latent feature space, classifies label-free images as corresponding to a particular cell cycle phase. Training data sets will be available that present the potential correspondence between label-free image and cell cycle phase with the FUCCI probe. Should this work, there will be innumerable immediate applications in a very large community of microscopy users in the biomedical sciences.       

# Results
![tiles](img_tile2.png)
![tiles](norm_epoch4350.png)
![tiles](norm_epoch4400.png)
![tiles](norm_epoch4450.png)
![tiles](norm_epoch4900.png)



**Team Leads:** Murat Can Çobanoğlu, PhD and Tadamoto Isogai, PhD, Lyda Hill 
