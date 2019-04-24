//
//  SampleData.swift
//  TrainingIOS
//
//  Created by David Jardon on 18/04/2019.
//  Copyright © 2019 David Jardon. All rights reserved.
//

import UIKit

/************** DEFAULT DATA **************/
// MARK: -  Create list of Students

// With Calendar and DateComponents class can create a new Date
// Calendar.current return actual Calendar 'Gregorian'
let defaultStudents: [Student] = [Student(photo: "img_student_7",
                                          name: "Óliver",
                                          age: Calendar.current.date(from: DateComponents(year: 2019,
                                                                                          month: 5)),
                                          email: "oliver@gmail.com"),
                                  Student(photo: "img_student_2",
                                          name: "Ángel",
                                          age: Calendar.current.date(from: DateComponents(year: 2013,
                                                                                          month: 9)),
                                          email: "angel@gmail.com"),
                                  Student(photo: "img_student_4",
                                          name: "Sara",
                                          age: Calendar.current.date(from: DateComponents(year: 1984,
                                                                                          month: 9)),
                                          email: "sara@gmail.com"),
                                  Student(photo: "img_student_3",
                                          name: "Eduardo",
                                          age: Calendar.current.date(from: DateComponents(year: 1956,
                                                                                          month: 12)),
                                          email: "eduardo@gmail.com"),
                                  Student(photo: "img_student_5",
                                          name: "María",
                                          age: Calendar.current.date(from: DateComponents(year: 1956,
                                                                                          month: 4)),
                                          email: "maria@gmail.com"),
                                  Student(photo: "img_student_6",
                                          name: "Miguel",
                                          age: Calendar.current.date(from: DateComponents(year: 1983,
                                                                                          month: 6)),
                                          email: "miguel@gmail.com"),
                                  Student(photo: "img_student_1",
                                          name: "Lucía",
                                          age: Calendar.current.date(from: DateComponents(year: 1995,
                                                                                          month: 2)),
                                          email: "lucia@gmail.com")]


// MARK: -  Create list of Teachers

// With Calendar and DateComponents class can create a new Date
// Calendar.current return actual Calendar 'Gregorian'
// With .extern or .senior(amount) we represent the Enum value for this properties.
let defaultTeachers: [Teacher] = [Teacher(photo: "img_teacher_3",
                                          name: "David",
                                          age: Calendar.current.date(from: DateComponents(year: 1985,
                                                                                          month: 4)),
                                          email: "david@teacher.com",
                                          type: .extern,
                                          salary: .senior(amount: 50.0)),
                                  Teacher(photo: "img_teacher_2",
                                          name: "Jaime",
                                          age: Calendar.current.date(from: DateComponents(year: 1974,
                                                                                          month: 6)),
                                          email: "jaime@teacher.com",
                                          type: .intern,
                                          salary: .medium(amount: 40.0)),
                                  Teacher(photo: "img_teacher_4",
                                          name: "Pedro",
                                          age: Calendar.current.date(from: DateComponents(year: 1979,
                                                                                          month: 9)),
                                          email: "pedro@teacher.com",
                                          type: .intern,
                                          salary: .senior(amount: 50.0)),
                                  Teacher(photo: "img_teacher_5",
                                          name: "Daniel",
                                          age: Calendar.current.date(from: DateComponents(year: 1981,
                                                                                          month: 2)),
                                          email: "daniel@teacher.com",
                                          type: .intern,
                                          salary: .senior(amount: 50.0)),
                                  Teacher(photo: "img_teacher_1",
                                          name: "Laura",
                                          age: Calendar.current.date(from: DateComponents(year: 1980,
                                                                                          month: 10)),
                                          email: "laura@teacher.com",
                                          type: .extern,
                                          salary: .junior(amount: 20.0))]


// MARK: - Create list of Subjects
// Use a list.filter for get different values for each subject

// With Calendar and DateComponents class can create a new Date
// Calendar.current return actual Calendar 'Gregorian'
let defaultSubjects: [Subject] = [Subject(photo: "img_subject_android",
                                          name: "Android",
                                          year: Calendar.current.date(from: DateComponents(year: 2018,
                                                                                           month: 9)),
                                          teachers: defaultTeachers.filter{$0.name?.contains("u") ?? false},
                                          students: defaultStudents.filter{$0.name?.contains("a") ?? false}),
                                  Subject(photo: "img_subject_ios",
                                          name: "iOS",
                                          year: Calendar.current.date(from: DateComponents(year: 2019,
                                                                                           month: 3)),
                                          teachers: defaultTeachers.filter{$0.name?.contains("o") ?? false},
                                          students: defaultStudents.filter{$0.name?.contains("e") ?? false}),
                                  Subject(photo: "img_subject_python",
                                          name: "Python",
                                          year: Calendar.current.date(from: DateComponents(year: 2019,
                                                                                           month: 4)),
                                          teachers: defaultTeachers.filter{$0.name?.contains("i") ?? false},
                                          students: defaultStudents.filter{$0.name?.contains("i") ?? false}),
                                  Subject(photo: "img_subject_javascript",
                                          name: "JavaScript",
                                          year: Calendar.current.date(from: DateComponents(year: 2018,
                                                                                           month: 10)),
                                          teachers: defaultTeachers.filter{$0.name?.contains("e") ?? false},
                                          students: defaultStudents.filter{$0.name?.contains("o") ?? false}),
                                  Subject(photo: "img_subject_dart",
                                          name: "Dart",
                                          year: Calendar.current.date(from: DateComponents(year: 2018,
                                                                                           month: 9)),
                                          teachers: defaultTeachers.filter{$0.name?.contains("a") ?? false},
                                          students: defaultStudents.filter{$0.name?.contains("u") ?? false})]

