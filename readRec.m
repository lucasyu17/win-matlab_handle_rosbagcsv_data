function [ Rec ] = readRec( filename )

%% 导入文本文件中的数据。
% 用于从以下文本文件导入数据的脚本:
%
%    D:\YU\SJTU17-19\Labo\swarm\bag_history\csv_bag\2018-03-01-12-22-04-vehicle0-Recording.csv
%
% 要将代码扩展到其他选定数据或其他文本文件，请生成函数来代替脚本。

% 由 MATLAB 自动生成于 2018/03/05 16:00:14

%% 初始化变量。
% filename = 'D:\YU\SJTU17-19\Labo\swarm\bag_history\csv_bag\2018-03-01-12-22-04-vehicle0-Recording.csv';
delimiter = ',';
startRow = 2;

%% 每个文本行的格式:
%   列1: 文本 (%s)
%	列2: 双精度值 (%f)
%   列3: 双精度值 (%f)
%	列4: 双精度值 (%f)
%   列5: 文本 (%s)
%	列6: 双精度值 (%f)
%   列7: 双精度值 (%f)
%	列8: 双精度值 (%f)
%   列9: 双精度值 (%f)
%	列10: 双精度值 (%f)
%   列11: 双精度值 (%f)
%	列12: 双精度值 (%f)
%   列13: 双精度值 (%f)
%	列14: 双精度值 (%f)
%   列15: 双精度值 (%f)
%	列16: 双精度值 (%f)
%   列17: 双精度值 (%f)
%	列18: 双精度值 (%f)
%   列19: 双精度值 (%f)
%	列20: 双精度值 (%f)
%   列21: 双精度值 (%f)
%	列22: 双精度值 (%f)
%   列23: 双精度值 (%f)
%	列24: 双精度值 (%f)
%   列25: 双精度值 (%f)
%	列26: 双精度值 (%f)
% 有关详细信息，请参阅 TEXTSCAN 文档。
formatSpec = '%s%f%f%f%s%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%[^\n\r]';

%% 打开文本文件。
fileID = fopen(filename,'r');

%% 根据格式读取数据列。
% 该调用基于生成此代码所用的文件的结构。如果其他文件出现错误，请尝试通过导入工具重新生成代码。
dataArray = textscan(fileID, formatSpec, 'Delimiter', delimiter, 'EmptyValue' ,NaN,'HeaderLines' ,startRow-1, 'ReturnOnError', false, 'EndOfLine', '\r\n');

%% 关闭文本文件。
fclose(fileID);

%% 对无法导入的数据进行的后处理。
% 在导入过程中未应用无法导入的数据的规则，因此不包括后处理代码。要生成适用于无法导入的数据的代码，请在文件中选择无法导入的元胞，然后重新生成脚本。

%% 将导入的数组分配给列变量名称
time1 = dataArray{:, 1};
Rec.time1 = time1;
headerseq = dataArray{:, 2};
headerstampsecs = dataArray{:, 3};
headerstampnsecs = dataArray{:, 4};
headerframe_id = dataArray{:, 5};
Rec_posEstx = dataArray{:, 6};
Rec.Rec_posEstx = Rec_posEstx;
Rec_posEsty = dataArray{:, 7};
Rec.Rec_posEsty = Rec_posEsty;
Rec_posEstz = dataArray{:, 8};
Rec.Rec_posEstz = Rec_posEstz;
Rec_velEstx = dataArray{:, 9};
Rec.Rec_velEstx = Rec_velEstx;
Rec_velEsty = dataArray{:, 10};
Rec.Rec_velEsty = Rec_velEsty;
Rec_velEstz = dataArray{:, 11};
Rec.Rec_velEstz = Rec_velEstz;
Rec_attEstx = dataArray{:, 12};
Rec.Rec_attEstx = Rec_attEstx;
Rec_attEsty = dataArray{:, 13};
Rec.Rec_attEsty = Rec_attEsty;
Rec_attEstz = dataArray{:, 14};
Rec.Rec_attEstz = Rec_attEstz;
Rec_posSpx = dataArray{:, 15};
Rec.Rec_posSpx = Rec_posSpx;
Rec_posSpy = dataArray{:, 16};
Rec.Rec_posSpy = Rec_posSpy;
Rec_posSpz = dataArray{:, 17};
Rec.Rec_posSpz = Rec_posSpz;
Rec_velSpx1 = dataArray{:, 18};
Rec_velSpy1 = dataArray{:, 19};
Rec_velSpz1 = dataArray{:, 20};
Rec_accSpx1 = dataArray{:, 21};
Rec_accSpy1 = dataArray{:, 22};
Rec_accSpz1 = dataArray{:, 23};
Rec_yaw_sp1 = dataArray{:, 24};
Rec_roll_sp1 = dataArray{:, 25};
Rec_pitch_sp1 = dataArray{:, 26};


%% 清除临时变量
clearvars filename delimiter startRow formatSpec fileID dataArray ans;
end

