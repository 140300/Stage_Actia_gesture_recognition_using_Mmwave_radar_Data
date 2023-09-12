% 'Wave' =1,'Pinch'=2,'Swipe'=3,'Click' =4

close all;
layers = [
    imageInputLayer([400,200,1],'Normalization','none')
    
    convolution2dLayer(10,16,'Padding','same')
    batchNormalizationLayer
    reluLayer('Name','Layer1')
    maxPooling2dLayer(10,'Stride',2)
    
    convolution2dLayer(5,32,'Padding','same')
    batchNormalizationLayer
    reluLayer('Name','Layer2')
    maxPooling2dLayer(10,'Stride',2)
    
    convolution2dLayer(5,32,'Padding','same')
    batchNormalizationLayer
    reluLayer('Name','Layer3')
    maxPooling2dLayer(10,'Stride',2)
    
    convolution2dLayer(5,32,'Padding','same')
    batchNormalizationLayer
    reluLayer('Name','Layer4')
    maxPooling2dLayer(5,'Stride',2)
    
    convolution2dLayer(5,32,'Padding','same')
    batchNormalizationLayer
    reluLayer('Name','Layer5')
    averagePooling2dLayer(2,'Stride',2)
    
    fullyConnectedLayer(4)
    softmaxLayer
    classificationLayer];

options = trainingOptions('adam', ...
    'ExecutionEnvironment','gpu',...
    'MiniBatchSize',128, ...
    'MaxEpochs',30, ...
    'InitialLearnRate',1e-2, ...
    'LearnRateSchedule','piecewise', ...
    'LearnRateDropFactor',0.1, ...
    'LearnRateDropPeriod',10, ...
    'Shuffle','every-epoch', ...
    'Verbose',false, ...
    'Plots','training-progress');

lgraph = layerGraph(layers);

net = trainNetwork(data_train,labels_train,layers,options);

save net;
% 'Wave' =1,'Pinch'=2,'Swipe'=3,'Click' =4

predTestLabel = classify(net,data_test);

testAccuracy = mean(predTestLabel == labels_test);


plotconfusion(labels_test,predTestLabel);


