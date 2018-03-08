function [ Rec ] = readRec( filename )

%% �����ı��ļ��е����ݡ�
% ���ڴ������ı��ļ��������ݵĽű�:
%
%    D:\YU\SJTU17-19\Labo\swarm\bag_history\csv_bag\2018-03-01-12-22-04-vehicle0-Recording.csv
%
% Ҫ��������չ������ѡ�����ݻ������ı��ļ��������ɺ���������ű���

% �� MATLAB �Զ������� 2018/03/05 16:00:14

%% ��ʼ��������
% filename = 'D:\YU\SJTU17-19\Labo\swarm\bag_history\csv_bag\2018-03-01-12-22-04-vehicle0-Recording.csv';
delimiter = ',';
startRow = 2;

%% ÿ���ı��еĸ�ʽ:
%   ��1: �ı� (%s)
%	��2: ˫����ֵ (%f)
%   ��3: ˫����ֵ (%f)
%	��4: ˫����ֵ (%f)
%   ��5: �ı� (%s)
%	��6: ˫����ֵ (%f)
%   ��7: ˫����ֵ (%f)
%	��8: ˫����ֵ (%f)
%   ��9: ˫����ֵ (%f)
%	��10: ˫����ֵ (%f)
%   ��11: ˫����ֵ (%f)
%	��12: ˫����ֵ (%f)
%   ��13: ˫����ֵ (%f)
%	��14: ˫����ֵ (%f)
%   ��15: ˫����ֵ (%f)
%	��16: ˫����ֵ (%f)
%   ��17: ˫����ֵ (%f)
%	��18: ˫����ֵ (%f)
%   ��19: ˫����ֵ (%f)
%	��20: ˫����ֵ (%f)
%   ��21: ˫����ֵ (%f)
%	��22: ˫����ֵ (%f)
%   ��23: ˫����ֵ (%f)
%	��24: ˫����ֵ (%f)
%   ��25: ˫����ֵ (%f)
%	��26: ˫����ֵ (%f)
% �й���ϸ��Ϣ������� TEXTSCAN �ĵ���
formatSpec = '%s%f%f%f%s%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%[^\n\r]';

%% ���ı��ļ���
fileID = fopen(filename,'r');

%% ���ݸ�ʽ��ȡ�����С�
% �õ��û������ɴ˴������õ��ļ��Ľṹ����������ļ����ִ����볢��ͨ�����빤���������ɴ��롣
dataArray = textscan(fileID, formatSpec, 'Delimiter', delimiter, 'EmptyValue' ,NaN,'HeaderLines' ,startRow-1, 'ReturnOnError', false, 'EndOfLine', '\r\n');

%% �ر��ı��ļ���
fclose(fileID);

%% ���޷���������ݽ��еĺ���
% �ڵ��������δӦ���޷���������ݵĹ�����˲�����������롣Ҫ�����������޷���������ݵĴ��룬�����ļ���ѡ���޷������Ԫ����Ȼ���������ɽű���

%% ����������������б�������
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


%% �����ʱ����
clearvars filename delimiter startRow formatSpec fileID dataArray ans;
end

