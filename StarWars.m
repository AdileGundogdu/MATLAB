
fs=8192; %Verdiðimiz fs sesin kalýnlýðýný deðiþtirir ve süresini deðiþtirir.
duration =.6;

%task 1 Read the xlsx file

filename= 'imperial.xlsx';
sheet = 1;
xlrange = 'A2:B45';
notes = xlsread(filename,sheet,xlrange);

%task 2 Create a frequency vector

ratio = 2^(1/12);
frequency_vector = 440*ratio.^[-24:24];

%task 3 Create a single sound wave of 440Hz for the given duration
t=[0:1/fs:duration];
y=sin(2*pi*440*t);
soundsc(y,fs)
clear y;

%task 4 
y=[];
notasayisi = length(notes(:,1));

for i=1:notasayisi
    duration_of_note(i)=duration*notes(i,2);
    t=[0:1/fs:duration_of_note(i)];
    if notes(i,1)>0 
        
        sound=sin(2*pi*frequency_vector(notes(i,1)+16)*t);
        
    elseif notes(i,1)==-1
        
        sound = 0*t;
       
       
    end
     y=[y sound];
end
soundsc(y,fs)



