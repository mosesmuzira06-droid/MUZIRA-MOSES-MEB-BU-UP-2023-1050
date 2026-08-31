clc;
clear;

% Ask for the number of courses

numberOfCourses = input("Enter the number of courses: ");


% Create empty arrays

creditUnits = zeros(numberOfCourses, 1);

gradePoints = zeros(numberOfCourses, 1);


% Enter information for each course

for i = 1:numberOfCourses
    
    fprintf("\nCourse %d\n", i);
    
    creditUnits(i) = input("Enter credit units: ");
    
    gradePoints(i) = input("Enter grade point: ");
    
end


% Calculate GPA

weightedPoints = creditUnits .* gradePoints;

GPA = sum(weightedPoints) / sum(creditUnits);


% Display GPA

fprintf("\n-----------------------------------------------\n");

fprintf("STUDENT GPA = %.2f\n", GPA);

fprintf("-------------------------------------------------\n");


% Ask for the number of semesters

numberOfSemesters = input("\nEnter number of completed semesters: ");


% Create arrays

semesterGPA = zeros(numberOfSemesters, 1);

semesterCredits = zeros(numberOfSemesters, 1);


% Enter semester information

for i = 1:numberOfSemesters
    
    fprintf("\nSemester %d\n", i);
    
    semesterGPA(i) = input("Enter GPA: ");
    
    semesterCredits(i) = input("Enter total credit units: ");
    
end


% Calculate CGPA

CGPA = sum(semesterGPA .* semesterCredits) / ...
       sum(semesterCredits);


% Display CGPA

fprintf("\n------------------------------------------\n");

fprintf("STUDENT CGPA = %.2f\n", CGPA);

fprintf("--------------------------------------------\n");