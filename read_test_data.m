%This part is getting the directory where your Matlab is running right now
dir=pwd;
%This parts loads the data
load([dir,'\','Data_For_Test_Random.mat'])

data_test=zeros(400,200,1,643);

for i=1:643
    x = Data_rand{i,1}{1,1}; %Get The data
    x=20*log10(abs(x)./max(abs(x(:))));
    x = imresize(x, [400, 200]);
    data_test(:,:,1,i)=x;
end

labels_test=zeros(643,1);

for i=1:643
    x=Data_rand{i,2};
    if contains(x, 'Wave')
        labels_test(i)=1;
    elseif contains(x, 'Pinch')
        labels_test(i)=2;
    elseif contains(x, 'Swipe')
        labels_test(i)=3;
    elseif contains(x,'Click')
        labels_test(i)=4;
    end
end
labels_test=categorical(labels_test);
