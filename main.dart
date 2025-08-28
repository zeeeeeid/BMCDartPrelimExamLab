/// The purpose of this program is to know if the the student is passed or failed in his final grade

import 'dart:io';
void main() {

//declaring of constants variable
    const double passGrade = 60.0;
    const double maxAssignScore = 100.0;
    const double assignmentWeight = 0.2;
    const double midtermWeight = 0.3;
    const double finalExamWeight = 0.5;

//entering student's name and scores
    print("Student's Name: ");
    String? name = stdin.readLineSync();

    print("Assignment Score: ");
    double? assign = double.parse(stdin.readLineSync()!);

    print("Midterm Score:  ");
    double? midterm = double.parse(stdin.readLineSync()!);

    print("Final Exam Score:  ");
    double? finalExam = double.parse(stdin.readLineSync()!);

//using try catch to know if the input value is valid or invalid
    try {
        //condition to know if the input value is valid 
        if (assign > 0 && midterm > 0 && finalExam > 0) {
            double finalGrade = (assignmentWeight * assign) + (midtermWeight * midterm) + (finalExam * finalExamWeight);
        
        //using condition to know the status of student final grade, passed or failed
            String status;
            if (finalGrade < passGrade) {
                status = "Failed";
            } else {
                status = "Passed";
            }
            
        //displaying all the results
            print("Student's Name: ${name}");
            print("Midterm Score: ${midterm}");
            print("Assignment Score: ${assign}");
            print("Final Exam Score: ${finalExam}");
            print("Final Grade: ${finalGrade}");
            print("Passed or Failed: ${status}");
        }
    // if the "try" part is error, it will print ERROR statement inside catch
    } catch (e) {
        print("ERROR: Input a valid value");
    }

}