flist=textread('faces.txt','%s');
i=1;
A=[];
b = size(flist);
while(i<b(1))
    T=imread(char(flist(i,1)));
    T=reshape(T,prod(size(T)),1);
    A(:,size(A,2)+1)=T;
	i=i+1;
endwhile
Z=mean(A,2);
#Y=round(Z);
#Y=reshape(Y,250,250);
#test=eig(full(Y));
Z=uint8(Z);
Z=reshape(Z,250,250);
imwrite(Z, "picture.jpg");