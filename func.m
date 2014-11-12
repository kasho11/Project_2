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

Z=mean(A,2);
norm = A-Z;
C=A'*A;
test=eigs(C,10);
u1=Z*test(1);
u2=Z*test(2);
u3=Z*test(3);
u4=Z*test(4);
u5=Z*test(5);
u6=Z*test(6);
u7=Z*test(7);
u8=Z*test(8);
u9=Z*test(9);
u10=Z*test(10);
colormap('gray');
i=1;
imshow(reshape(uint8(255/(max(max(u1))-min(min(u1)))*(u1-min(min(u1)))),250,250),"pic1.jpg");
imshow(reshape(uint8(255/(max(max(u2))-min(min(u2)))*(u2-min(min(u2)))),250,250),"pic2.jpg");
imshow(reshape(uint8(255/(max(max(u3))-min(min(u3)))*(u3-min(min(u3)))),250,250),"pic3.jpg");
imshow(reshape(uint8(255/(max(max(u4))-min(min(u4)))*(u4-min(min(u4)))),250,250),"pic4.jpg");
imshow(reshape(uint8(255/(max(max(u5))-min(min(u5)))*(u5-min(min(u5)))),250,250),"pic5.jpg");
imshow(reshape(uint8(255/(max(max(u6))-min(min(u6)))*(u6-min(min(u6)))),250,250),"pic6.jpg");
imshow(reshape(uint8(255/(max(max(u7))-min(min(u7)))*(u7-min(min(u7)))),250,250),"pic7.jpg");
imshow(reshape(uint8(255/(max(max(u8))-min(min(u8)))*(u8-min(min(u8)))),250,250),"pic8.jpg");
imshow(reshape(uint8(255/(max(max(u9))-min(min(u9)))*(u9-min(min(u9)))),250,250),"pic9.jpg");
imshow(reshape(uint8(255/(max(max(u10))-min(min(u10)))*(u10-min(min(u10)))),250,250),"pic10.jpg");
#{imshow(reshape(uint8(255/
Z=reshape(Z,250,250);
imwrite(Z, "picture.jpg");#}