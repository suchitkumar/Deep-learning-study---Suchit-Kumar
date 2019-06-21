close all;
clear;
clc;

im = im2double(imread('C:\Users\MISSL-SUCHIT\Documents\KU.MISSL.DL\Anaconda.jpg'));

figure; imshow(im);
h5create('C:\Users\MISSL-SUCHIT\Documents\KU.MISSL.DL\Anaconda.h5', '/dataset', size(im))
hdf5write('C:\Users\MISSL-SUCHIT\Documents\KU.MISSL.DL\Anaconda.h5', '/dataset', im)


data = h5read('C:\Users\MISSL-SUCHIT\Documents\KU.MISSL.DL\data.h5', '/dataset');
h5disp('C:\Users\MISSL-SUCHIT\Documents\KU.MISSL.DL\data.h5', '/dataset')
