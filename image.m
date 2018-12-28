% Adile Gündoðdu
% 090150351


pic1=imread('peppers.png');
pic2=imread('tape.png');

alpha=0.5;

x=zeros(384,512,3);
x=alpha*pic1+(1-alpha)*pic2;
f=figure;
image(x);

pos=get(f,'Position');
x0p=pos(1);       %resmin xo
yop=pos(2);       %resmin yo
w=pos(3);         %resmin geniþliði
h=pos(4);         %resmin yüksekliði

height=15;       %sliderin yüksekliði
width=400;         %sliderin geniþliði
x0=w/2-width/2;           %sliderin xo
y0=5;             %sliderin yo


b=uicontrol('Parent',f,'Style','slider','Position',[x0,y0,width,height],...
    'value',alpha,'min',0,'max',1);

title(['$\alpha=$',num2str(alpha)],'Interpreter','LaTeX');

b.Callback = @(a1,a2) {image(a1.Value*pic1+(1-a1.Value)*pic2) ...
      title(['$\alpha=$',num2str(a1.Value)],'Interpreter','LaTeX');};


