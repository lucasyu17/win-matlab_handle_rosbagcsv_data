function [ time_diff_insecond ] = diff_time( timelist1,num1,starttime)
%UNTITLED10 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
if num1 == -1
    time_diff = timelist1 - starttime;
    time_diff_insecond = time_diff(:,1).*60*60+time_diff(:,2).*60 + time_diff(:,3); 
else
    time_diff = timelist1(num1,:) - starttime;
    time_diff_insecond = time_diff(1)*60*60+time_diff(2)*60 + time_diff(3);
end;


end

