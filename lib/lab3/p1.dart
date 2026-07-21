// Create a class named Candidate with Candidate_ID, Candidate_Name, Candidate_Age, Candidate_ Weight and Candidate_Height data members. Also create a method GetCandidateDetails() and DisplayCandidateDetails(}. Create main method to demonstrate the Candidate class.

import 'dart:io';

class Candidate {
  int candidateID = 0;
  String candidateName = "";
  int candidateAge = 0;
  double candidateHeight = 0;
  double candidateWeight = 0;

  void getCandidate() {
    print("Enter candidate ID:");
    candidateID = int.parse(stdin.readLineSync()!);

    print("Enter candidate name:");
    candidateName = stdin.readLineSync()!;

    print("Enter candidate age:");
    candidateAge = int.parse(stdin.readLineSync()!);

    print("Enter candidate height:");
    candidateHeight = double.parse(stdin.readLineSync()!);

    print("Enter candidate weight:");
    candidateWeight = double.parse(stdin.readLineSync()!);
  }

  void displayCandidateDetails() {
    print("Candidate ID: $candidateID");
    print("Candidate Name: $candidateName");
    print("Candidate Age: $candidateAge");
    print("Candidate Height: $candidateHeight");
    print("Candidate Weight: $candidateWeight");
  }
}

void main() {
  Candidate c1 = Candidate();
  c1.getCandidate();
  c1.displayCandidateDetails();
}