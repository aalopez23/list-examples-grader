# Create your grading script here

#set -e

rm -rf student-submission
git clone $1 student-submission

cd student-submission
if [ ! -f ListExamples.java ]
then
echo Wrong Submission File
fi

cd ..
mkdir GradeCheck 
cp TestListExamples.java student-submission/ListExamples.java GradeCheck
cp -r lib GradeCheck

cd GradeCheck
$javac

javac -cp .:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar *.java

if [ ! -f ListExamples.class ]
then
echo Does not compile
exit 
fi
pwd
javac -cp .:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar *.java
java -cp .:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar org.junit.runner.JUnitCore TestListExamples


