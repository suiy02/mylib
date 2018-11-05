function cornerPoints = read_cp(filename, startRow, endRow)
%IMPORTFILE Import numeric data from a text file as a matrix.
%   CORNERPOINTS = IMPORTFILE(FILENAME) Reads data from text file FILENAME
%   for the default selection.
%
%   CORNERPOINTS = IMPORTFILE(FILENAME, STARTROW, ENDROW) Reads data from
%   rows STARTROW through ENDROW of text file FILENAME.
%
% Example:
%   cornerPoints = importfile('cornerPoints.txt', 8, 225);
%
%    See also TEXTSCAN.

% Auto-generated by MATLAB on 2016/09/08 09:58:53

%% Initialize variables.
if nargin<=2
    startRow = 8;
    endRow = inf;
end

%% Read columns of data as strings:
% For more information, see the TEXTSCAN documentation.
formatSpec = '%f%f%f%f';
%% Open the text file.
fileID = fopen(filename,'r');
%% Read columns of data according to format string.
% This call is based on the structure of the file used to generate this
% code. If an error occurs for a different file, try regenerating the code
% from the Import Tool.
% dataArray = textscan(fileID, formatSpec, endRow(1)-startRow(1)+1, 'Delimiter', ' ', 'WhiteSpace', '', 'HeaderLines', startRow(1)-1, 'ReturnOnError', false);
dataArray = textscan(fileID, formatSpec, endRow(1)-startRow(1)+1, 'HeaderLines', startRow(1)-1, 'ReturnOnError', false);
fclose(fileID);
cornerPoints = cell2mat(dataArray);