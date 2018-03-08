function [ time_diff_insecond ] = diff_time( timelist1,num1,starttime)
%UNTITLED10 此处显示有关此函数的摘要
%   此处显示详细说明
if num1 == -1
    time_diff = timelist1 - starttime;
    time_diff_insecond = time_diff(:,1).*60*60+time_diff(:,2).*60 + time_diff(:,3); 
else
    time_diff = timelist1(num1,:) - starttime;
    time_diff_insecond = time_diff(1)*60*60+time_diff(2)*60 + time_diff(3);
end;


end

