
f=0.5; %�����źŵ�Ƶ��0.5Hz
T=1.0/f; %2���ź�����
N=1024; %2�����ڲɼ�1024�㣬ƽ��ÿ������Ϊ512��
x=linspace(0,2*T,N);
x1=square(2*pi*f*x);

figure(1)
subplot(5,2,1);
plot(x,x1,'LineWidth',2);
title('ԭʼ�����ź�');
xlabel('ʱ��');ylabel('����');
axis([0,2,-2,2]);
for i=1:2:15
    subplot(5,2,(i+1)./2+1);
    y = 4/pi.*(1./i).*sin(i*pi*x);
    plot(x,y,'LineWidth',2);
    xlabel('ʱ��');ylabel('����');
    axis([0,2,-2,2]);
    switch i
    case 1
    title('һ��г��');
    case 3
    title('����г��');
    case 5
    title('���г��');
    case 7
    title('�ߴ�г��');
    case 9
    title('�Ŵ�г��');
    case 11
    title('ʮһ��г��');
        case 13
    title('ʮ����г��');
        case 15
    title('ʮ���г��');

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
legend('ԭʼ����','һ�׸���Ҷ����','���׸���Ҷ����','��׸���Ҷ����','�߽׸���Ҷ����','�Ž׸���Ҷ����','ʮһ�׸���Ҷ����','ʮ���׸���Ҷ����','ʮ��׸���Ҷ����');
hold on
end

y=0;
j=1;
figure(3)
subplot(5,2,1)
plot(x,x1,'LineWidth',2);
axis([0,2,-2,2]);
title('ԭʼ����');
xlabel('ʱ��');ylabel('����');
hold on
for i=1:2:11
y=y+(4/pi)*[(1/i)*sin(2*pi*f*i*x)];
subplot(5,2,(i+1)./2+1);
plot(x,y,'LineWidth',2);
hold on;
x1=square(2*pi*f*x);
plot(x,x1,'LineWidth',2,'color','black');
j=j+1;
xlabel('ʱ��');ylabel('����');
switch i
    case 1
    title('һ�׸���Ҷ����');
    case 3
    title('���׸���Ҷ����');
    case 5
    title('��׸���Ҷ����');
    case 7
    title('�߽׸���Ҷ����');
    case 9
    title('�Ž׸���Ҷ����');
    case 11
    title('ʮһ�׸���Ҷ����');
    case 13
    title('ʮ���׸���Ҷ����');
    case 15
    title('ʮ��׸���Ҷ����');
end
hold on
end

figure(4)
ww=(1:2:15)*pi;
bb=1./(1:2:15);
plot(ww,abs(bb),':o');
title('Ƶ����������');
xlabel('��Ƶ��');ylabel('����');
