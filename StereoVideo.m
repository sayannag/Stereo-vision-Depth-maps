function StereoVideo(vid,name)
    %wr=VideoWriter(name);
    %open(wr);
    for k=2000:2001
        
        a=read(vid,k);
        s=size(a);
        l=s(2);
        left=a(:,1:l/2,:);
        right=a(:,l/2+1:l,:);
        out=Stereo(left,right);
        %writeVideo(wr,out);
    end
    %close(wr);
end