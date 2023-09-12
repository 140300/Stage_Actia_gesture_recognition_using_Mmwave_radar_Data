close all;
%This part is getting the directory where your Matlab is running right now
% 'Wave' =1,'Pinch'=2,'Swipe'=3,'Click' =4

dir=pwd;
data_train=zeros(400,200,1,2433);
labels_train=zeros(2433,1);

list=['A','B','C','D','E','F'];
b=1;
for Person=list
    load([dir,'\','Data_Per_PersonData_Training_Person_',Person,'.mat']);
    for j=1:4
        a=size(Data_Training.Doppler_Signals{j},1);
        for k=b:b+a-1
            x = Data_Training.Doppler_Signals{j}{k-b+1};
            x=20*log10(abs(x)./max(abs(x(:))));
            x = imresize(x, [400, 200]);
            data_train(:,:,1,k)=x;
            labels_train(k)=j;
        end
        b=b+a;
    end
end
labels_train=categorical(labels_train);