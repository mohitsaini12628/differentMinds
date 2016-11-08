function [] = createAndSaveData (m,n)

X = zeros(m,n);

for i = 1:m

X(i,1) = random_number(60,85);
X(i,2) = random_number(10,42);
X(i,3) = random_number(50,95);
X(i,4) = random_number(25,90);
X(i,5) = random_number(15,60);
X(i,6) = random_number(10,70);
X(i,7) = random_number(19,65);
X(i,8) = random_number(30,80);
X(i,9) = random_number(10,40);
X(i,10) = random_number(15,65);
X(i,11) = random_number(30,85);
X(i,12) = random_number(20,85);
X(i,13) = random_number(5,55);
X(i,14) = random_number(60,95);
X(i,15) = random_number(20,70);
X(i,16) = random_number(45,95);
X(i,17) = random_number(15,40);
X(i,18) = random_number(5,60);
X(i,19) = random_number(40,98);
X(i,20) = random_number(0,75);
X(i,21) = random_number(0,80);
X(i,22) = random_number(50,150);
X(i,23) = random_number(30,60);
X(i,24) = random_number(15,65);
X(i,25) = random_number(30,70);
X(i,26) = random_number(20,50);
X(i,27) = random_number(57,90);
X(i,28) = random_number(10,95);
X(i,29) = random_number(50,85);
X(i,30) = random_number(55,80);
X(i,31) = random_number(20,60);
X(i,32) = random_number(30,50);
X(i,33) = random_number(20,50);
X(i,34) = random_number(0,80);
X(i,35) = random_number(0,90);
X(i,36) = random_number(20,60);
X(i,37) = random_number(10,80);
X(i,38) = random_number(15,50);
X(i,39) = random_number(20,60);
X(i,40) = random_number(20,40);


endfor


myfilename = "students_test_data.txt";
save("-text", myfilename, "X");


end
