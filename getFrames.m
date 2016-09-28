function [I1 I2]=getFrames(videoPath,time)
    video=VideoReader(videoPath);
    video.CurrentTime=3286;
    Frame=readFrame(video);
    I1=Frame(:,1:size(Frame,2)/2);I2=Frame(:,1+size(Frame,2)/2:end);
end