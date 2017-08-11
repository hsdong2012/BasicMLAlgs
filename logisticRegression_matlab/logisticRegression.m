

clc
clear all;
close all;

addpath('.././data/mnist');%read the upper path

load('trainData.mat');
load('trainLabel.mat');
load('testData.mat');
load('testLabel.mat');


%% 
%data pre-pocessing
[num, unused] = size(testLabel);
for i= 1:num
    [unused, label] = max( testLabel(i,:) );
    ntestLabel(i) = label;
end;
clear testLabel;
testLabel = ntestLabel;
clear ntestLabel;

[num, unused] = size(trainLabel);
for i= 1:num
    [unused, label] = max( trainLabel(i,:) );
    ntrainLabel(i) = label;
end;
clear trainLabel;
trainLabel = ntrainLabel;
clear ntrainLabel;

%%
%data pre-pocessing for logistic regression
w = ones(1,784);
b = 1;
learningStep = 0.00001;

w = [w,b];
% w=uint8(w);

[num, unused] = size(testData);
temp2 = ones(num,1);
testData = double([testData, temp2]);

[num, unused] = size(trainData);
temp1 = ones(num,1);
trainData = double([trainData, temp1]);

testLabel(testLabel<=5) = -1;
trainLabel(trainLabel<=5) = -1;
testLabel(testLabel>5) = 1;
trainLabel(trainLabel>5) = 1;

%%
%data pre-pocessing for logistic regression
iteration = 1;
for it = 1:iteration
    
    errorData = [];
    errorLabel = [];
    errorNum = 0;
    for i = 1:num
        i
        if( ssign(w,trainData(i,:)) ~= trainLabel(i) )
            errorNum = errorNum +1;
            errorData(errorNum,:) = trainData(i,:);
            errorLabel(errorNum) = trainLabel(i);
        end;

%         w = w - learningStep*;


    end;
    errorNum
end;
    
    





