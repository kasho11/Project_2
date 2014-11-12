flist=textread('faces.txt','%s');
i=1;
Faces=[];
U=[];
b = size(flist);
while(i<b(1))
    T=imread(char(flist(i,1)));
    T=reshape(T,prod(size(T)),1);
    Faces(:,size(Faces,2)+1)=T;
	i=i+1;
endwhile

AvgFace=mean(Faces,2);
NormFaces = Faces-AvgFace;
AvgNormFace=mean(NormFaces,2);
Cov=Faces'*Faces;
[Eigens, values]=eigs(Cov);



u1=NormFaces*Eigens(:,1);



u2=NormFaces*Eigens(:,2);
u3=NormFaces*Eigens(:,3);
u4=NormFaces*Eigens(:,4);
u5=NormFaces*Eigens(:,5);
u6=NormFaces*Eigens(:,6);
colormap('gray');
i=1;
facespace=[];
facespace(:,1)=u1;
facespace(:,2)=u2;
facespace(:,3)=u3;
facespace(:,4)=u4;
facespace(:,5)=u5;
facespace(:,6)=u6;




imwrite(reshape(uint8(255/(max(max(u1))-min(min(u1)))*(u1-min(min(u1)))),250,250),"pic1.jpg");



imwrite(reshape(uint8(255/(max(max(u2))-min(min(u2)))*(u2-min(min(u2)))),250,250),"pic2.jpg");



imwrite(reshape(uint8(255/(max(max(u3))-min(min(u3)))*(u3-min(min(u3)))),250,250),"pic3.jpg");
imwrite(reshape(uint8(255/(max(max(u4))-min(min(u4)))*(u4-min(min(u4)))),250,250),"pic4.jpg");
imwrite(reshape(uint8(255/(max(max(u5))-min(min(u5)))*(u5-min(min(u5)))),250,250),"pic5.jpg");
imwrite(reshape(uint8(255/(max(max(u6))-min(min(u6)))*(u6-min(min(u6)))),250,250),"pic6.jpg");
save facespace.txt facespace;