function disparityMap=Stereo(left,right) 
    frameLeftGray  = rgb2gray(left);
    frameRightGray = rgb2gray(right);

    disparityMap = disparity(frameLeftGray, frameRightGray,'BlockSize',9,'UniquenessThreshold',1);
    subplot(1,3,1),imshow(left),title('Left'),subplot(1,3,2),imshow(right),title('Right');
    subplot(1,3,3);
    imshow(disparityMap, [0, 50]);
    title('Disparity Map');
    colormap jet
    colorbar
    figure;
    imshow(disparityMap, [0, 50]);
    title('Disparity Map');
    %colormap jet
    %colorbar
end