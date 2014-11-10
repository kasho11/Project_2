flist=textread('faces.txt','%s');
i=1;
A=[];
U=[];
b = size(flist);
while(i<b(1))
    T=imread(char(flist(i,1)));
    T=reshape(T,prod(size(T)),1);
    A(:,size(A,2)+1)=T;
	i=i+1;
endwhile
Z=mean(A,2)
norm = A-Z
C=A'*A
#Y=round(Z)
#Y=reshape(Y,250,250)
col=C(:,1)
test=eigs(C,5);
ui=A*test(1)
Z=mean(A,2)
ui=Z*ui;
#U(:,1)=ui;
#ui=A*test(2);
#U(:,2)=ui;
#ui=A*test(3);
#U(:,3)=ui;
#ui=A*test(4);
#U(:,4)=ui;
#ui=A*test(5);
#U(:,5)=ui;
Z=mean(ui,2);
Z=uint8(Z);
Z=reshape(Z,250,250);
imwrite(Z, "picture.jpg");