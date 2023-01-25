clear
clc

%%
NumElements=fix([1:1024, 2.^(10.25:0.25:16)]);
Addr=ones(size(NumElements));
A=1;
for k=1:numel(NumElements)
    A(NumElements(k),1)=1;
    Addr(k)=getdataaddr(A);
end

figure;
d=diff(Addr);
semilogx(NumElements(2:end),d~=0,'*')
xlabel('Number of elements')
set(gca,'ytick',[0,1],'yticklabels',{'Keep','Reallec'})