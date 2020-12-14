
f=0.5; %方波信号的频率0.5Hz
T=1.0/f; %2个信号周期
N=1024; %2个周期采集1024点，平均每个周期为512点
x=linspace(0,2*T,N);
x1=square(2*pi*f*x);

figure(1)
subplot(5,2,1);
plot(x,x1,'LineWidth',2);
title('原始方波信号');
xlabel('时间');ylabel('幅度');
axis([0,2,-2,2]);
for i=1:2:15
    subplot(5,2,(i+1)./2+1);
    y = 4/pi.*(1./i).*sin(i*pi*x);
    plot(x,y,'LineWidth',2);
    xlabel('时间');ylabel('幅度');
    axis([0,2,-2,2]);
    switch i
    case 1
    title('一次谐波');
    case 3
    title('三次谐波');
    case 5
    title('五次谐波');
    case 7
    title('七次谐波');
    case 9
    title('九次谐波');
    case 11
    title('十一次谐波');
        case 13
    title('十三次谐波');
        case 15
    title('十五次谐波');

    end
end
    

figure(2)
plot(x,x1,':','LineWidth',2);
hold on
ch=['r','g','b','w','m','y','c','k'];
y=0;
j=1;
for i=1:2:15
y=y+(4/pi)*[(1/i)*sin(2*pi*f*i*x)];
plot(x,y,ch(j),'LineWidth',2);
j=j+1;
axis([0,2,-2,2]);
legend('原始函数','一阶傅里叶级数','三阶傅里叶级数','五阶傅里叶级数','七阶傅里叶级数','九阶傅里叶级数','十一阶傅里叶级数','十三阶傅里叶级数','十五阶傅里叶级数');
hold on
end

y=0;
j=1;
figure(3)
subplot(5,2,1)
plot(x,x1,'LineWidth',2);
axis([0,2,-2,2]);
title('原始函数');
xlabel('时间');ylabel('幅度');
hold on
for i=1:2:11
y=y+(4/pi)*[(1/i)*sin(2*pi*f*i*x)];
subplot(5,2,(i+1)./2+1);
plot(x,y,'LineWidth',2);
hold on;
x1=square(2*pi*f*x);
plot(x,x1,'LineWidth',2,'color','black');
j=j+1;
xlabel('时间');ylabel('幅度');
switch i
    case 1
    title('一阶傅里叶级数');
    case 3
    title('三阶傅里叶级数');
    case 5
    title('五阶傅里叶级数');
    case 7
    title('七阶傅里叶级数');
    case 9
    title('九阶傅里叶级数');
    case 11
    title('十一阶傅里叶级数');
    case 13
    title('十三阶傅里叶级数');
    case 15
    title('十五阶傅里叶级数');
end
hold on
end

figure(4)
ww=(1:2:15)*pi;
bb=1./(1:2:15);
plot(ww,abs(bb),':o');
title('频幅特性曲线');
xlabel('角频率');ylabel('幅度');
