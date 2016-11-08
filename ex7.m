
clear ; close all; clc


fprintf('Finding closest group.\n\n');



%showQuestionSet();

% Select an initial set of centroids
K = 10;
n = 40; m = 10000;

%Loads the data in matrix X, which contains all the data of students with 40 (n=40) features having 10,000 (m=10000) students as training set!

load('students_data.txt');
fprintf('Training Data set contains 10,000 examples and 40 features. \n\n')
fprintf('Training Data Loaded. Press enter to continue\n\n')
pause;


random_index = randperm(size(X,1));
initial_centroids = X(random_index(1:K),:);


% Find the closest centroids for the examples using the
% initial_centroids
idx = findClosestCentroids(X, initial_centroids);

size(idx);

fprintf('Closest groups for the first 3 random examples: \n')
fprintf(' %d', idx(1:3)');
fprintf('\n')

fprintf('Program paused. Press enter to continue.\n');
pause;

% Computing means:

fprintf('\nComputing means of groups positions...\n\n');

size(X);

centroids = computeCentroids(X, idx, K);

size(centroids);



fprintf('Program paused. Press enter to continue.\n');
pause;

fprintf('\nRunning K-Means clustering on example dataset...\n\n');

% Load example dataset

load('students_data.txt');

% Settings for running K-Means
K = 10;
max_iters = 12;

fprintf('\nK-means algorithm: training model..! \n\n')

random_index = randperm(size(X,1));
initial_centroids = X(random_index(1:K),:);

[centroids, idx] = runkMeans(X, initial_centroids, max_iters, false); %true means plot the graph alongway
fprintf('\nK-means algorithm completed successfully! \n\n');

fprintf('Program paused. Press enter to continue.\n');
pause;
        
        
        % Implement K-means on test set.
        % That is, find the closest centroid to each test example. run findClosestCentroids(X_test, centroids)
        fprintf('Model Trained! You can now group a student with similar students just by knowing his/her traits. \n')
        fprintf('Loading Test Set...! \n')
        fprintf('Test Set contains 150 test examples with 40 features. Test set is used by trained model (in previous section), using K-means Algorithm \n')
        fprintf('Press Enter to conitnue.. \n')
pause;

        load('students_test_data.txt');

        idx_test = findClosestCentroids(Y,centroids);
        fprintf('Below is the list of groups assigned to all the students. There are total 10 groups.\n')
        idx_test
        
        hist(idx_test,unique(idx_test));
        
        fprintf('Thanks for watching the project!')
        
