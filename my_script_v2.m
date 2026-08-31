clc;
clear;
close all

% Import student information from excel
students = readtable("C:\Users\MUMBERE COMPUTERS\Desktop\New folder (2)\StudentDetails.xlsx");

% Display all student information
disp('----------------------------------');
disp('ALL STUDENT INFORMATION');
disp('----------------------------------');
disp(students);

% Pick individual information
names =students.Name;
regNumbers = students.RegNo;
gender = students.Gender;
age = students.Age;
tribes = students.Tribe;
associations = students.Association;
hostels = students.Hostel;
friends = students.Friends;
districts = students.District;
program = students.Program;
year =students.Year;
gpa = students.GPA;

% Display selected information
disp('STUDENT NAMES');
disp(names);

disp('STUDENT TRIBES');
disp(tribes);

disp('STUDENT ASSOCIATION');
disp(associations);

disp('STUDENT HOSTELS');
disp(hostels);

disp('STUDENT FRIENDS');
disp(friends);

disp('STUDENT GPA');
disp(gpa);

% Group information
groupName = 'Mining Engineers';
groupNumber = 5;

%Add group information to the table
students.GroupName = repmat(groupName, height(students),1);
students.GroupNumber = repmat(groupNumber,height(students),1);

% Export information to new Excel sheet
writetable(students,'StundentDetails.xlsx','Sheet','Group_5_Output');
disp('Information has been exported successfully.');
% Plots
% Student GPA
figure;
bar(gpa);
xlabel('Student Number');
ylabel('GPA');
title('GPA of Students in the Mining Engineering Program');
grid on;
saveas(gcf,'Student_GPA.png');

% Student Age
figure;
bar(age);
xlabel('Student Number');
ylabel('Age in Years');
title('Age Distribution of Students');
grid on;
saveas(gcf,'Student_Age.png');

% Hostel Distribution
[uniqueHostels, ~ , hostelNumber] = unique(hostels);
hostelCount = accumarray(hostelNumber,1);
figure;
bar(hostelCount);
xticks(1:length(uniqueHostels));
xticklabels(uniqueHostels);
xlabel('Hostel');
ylabel('Number of Students');
title('Distribution of Students According to Hostel');
grid on;
saveas(gcf,'Hostel_Distribution.png');

% Tribe Distribution
[uniqueTribes,~,tribeNumber] = unique(tribes);
tribecount = accumarray(tribeNumber,1);
figure;
pie(tribecount,uniqueTribes);
title('Distribution of Students According to Tribe');
saveas(gcf,'Tribe_Distribution.png');

% Age versus GPA
figure;
scatter(age,gpa,100,'filled');
xlabel('Age in Years');
ylabel('GPA');
title('Relationship Between Age and GPA');
grid on;
saveas(gcf,'Age_vs_GPA.png');
exportgraphics(gcf, 'Age_vs_GPA.pdf');

disp('-------------------------------'),
disp('PROGRAM COMPLETED SUCCESSFULLY');
disp('EXCEL DATA AND PLOTS HAVE BEEN SAVED');
disp('---------------------------------')