function [ratings] = RatingsData

%% Import data from text file
% Script for importing data from the following text file:
%
%    filename: /home/djoroya/Dropbox/Jesus-Oroya-Villalta/codigo/RecSys/ndata/ratings.csv
%
% Auto-generated by MATLAB on 10-Jul-2020 18:40:52

%% Setup the Import Options and import the data
opts = delimitedTextImportOptions("NumVariables", 4);

% Specify range and delimiter
opts.DataLines = [2, Inf];
opts.Delimiter = ",";

% Specify column names and types
opts.VariableNames = ["userId", "movieId", "rating", "timestamp"];
opts.VariableTypes = ["double", "double", "double", "double"];

% Specify file level properties
opts.ExtraColumnsRule = "ignore";
opts.EmptyLineRule = "read";

% Import the data
ratings = readtable("/home/djoroya/Dropbox/Jesus-Oroya-Villalta/codigo/RecSys/ndata/ratings.csv", opts);


%% Clear temporary variables
clear opts

end
