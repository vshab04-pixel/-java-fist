# Java First – Student Management System

A beginner-friendly, modular console-based **Student Management System** developed purely in **Core Java**. Designed specifically for academic coursework (such as BCA, B.Tech, and BSc Computer Science students), this project illustrates fundamental Object-Oriented Programming (OOP) concepts, Collections, robust File I/O, input validation, and clean application architecture without relying on external frameworks.

---

## 📌 Project Overview

The **Java First – Student Management System** provides a complete CRUD (Create, Read, Update, Delete) workflow for managing student academic records. It runs in the console with a clean menu interface and guarantees local data persistence through a structured flat-file database (`data/students.txt`).

---

## ✨ Features

1. **Add Student**:
   - Captures Student ID, Name, Age, Course, Semester, and Marks.
   - Enforces unique Student ID validation (prevents duplicate entries).
   - Automatically computes and assigns the student's letter grade upon entry.
2. **View All Students**:
   - Renders all registered students in a formatted tabular layout.
   - Displays real-time summary statistics (total student count and class average marks).
3. **Search Student**:
   - Search by **Student ID** (exact match, case-insensitive).
   - Search by **Student Name** (flexible keyword substring search).
4. **Update Student**:
   - Look up any student by ID to review current values and update their details.
   - Automatically recalculates and updates the academic grade.
5. **Delete Student**:
   - Removes student records with a safety confirmation prompt (`Y/N`).
6. **Calculate Grade**:
   - View the official academic grading scale.
   - Interactive grade evaluator for arbitrary custom marks.
   - Grade verification for any enrolled student with performance remarks.
7. **Local File Persistence**:
   - Automatically saves and loads student data from `data/students.txt`.
   - Data persists across application sessions without data loss.
8. **Robust Input Validation & Error Handling**:
   - Defends against invalid integers, decimals, empty strings, and out-of-range values without crashing.

---

## 🛠️ Technologies Used

- **Language**: Java (Java SE / Core Java 8 or higher)
- **Frameworks**: None (Pure Standard Java Library)
- **Input / Output**: `java.util.Scanner`, `java.io.BufferedReader`, `java.io.BufferedWriter`
- **Data Structures**: `java.util.ArrayList`, `java.util.List`

---

## 📚 Core Java Concepts Demonstrated

| Concept | Implementation in Project |
| :--- | :--- |
| **Classes & Objects** | Separated into distinct classes: `Student`, `StudentManager`, `FileHandler`, and `Main`. |
| **Constructors** | Default and parameterized constructors for flexible object initialization in `Student.java`. |
| **Encapsulation** | Private instance variables with public getters, setters, and internal data validation. |
| **Collections (`ArrayList`)** | Dynamic in-memory list management and traversal of `Student` objects. |
| **Methods & Modularity** | Single-responsibility methods with clear parameters and return types. |
| **Loops & Conditionals** | `while`, `for-each`, and `for` loops alongside `switch-case` and `if-else` branching. |
| **Exception Handling** | `try-catch-finally` and try-with-resources blocks handling `IOException` and `NumberFormatException`. |
| **File Handling** | Safe reading and writing of CSV-formatted student records using `FileReader` and `FileWriter`. |
| **Console Scanner** | User input management with safeguards against `Scanner` buffer skips. |
| **OOP Principles** | Abstraction of storage logic, encapsulation of entity state, and polymorphism via overridden methods. |

---

## 🗂️ Project Structure

```text
java-fist/
├── src/
│   ├── Main.java              # Console user interface and application entry point
│   ├── Student.java           # Student entity model with getters, setters, & grade logic
│   ├── StudentManager.java    # Business logic service managing in-memory student records
│   └── FileHandler.java       # Local file storage handler (reading/writing data/students.txt)
├── data/
│   └── students.txt           # Persistent CSV-formatted student records file
├── .gitignore                 # Standard Java gitignore for class files & IDE settings
└── README.md                  # Comprehensive project documentation
```

---

## 🚀 How to Compile and Run the Project

### Prerequisites
- **Java Development Kit (JDK 8 or higher)** installed on your machine.
- Verify your Java installation:
  ```bash
  javac -version
  java -version
  ```

---

### Step-by-Step Execution Commands

#### 💻 On Windows (Command Prompt / PowerShell):

1. **Navigate to the project root directory**:
   ```cmd
   cd java-fist
   ```

2. **Compile all Java source files into a `bin` directory**:
   ```cmd
   javac -d bin src/*.java
   ```

3. **Run the application**:
   ```cmd
   java -cp bin Main
   ```

---

#### 🐧 On Linux / 🍎 macOS (Terminal):

1. **Navigate to the project root directory**:
   ```bash
   cd java-fist
   ```

2. **Compile all Java source files into a `bin` directory**:
   ```bash
   javac -d bin src/*.java
   ```

3. **Run the application**:
   ```bash
   java -cp bin Main
   ```

---

### Single-Command Alternative (From `src` folder):

```bash
cd src
javac *.java
java Main
```

---

## 🖥️ Example Console Output

### 1. Main Menu
```text
=================================
           JAVA FIRST            
    Student Management System    
=================================
1. Add Student
2. View All Students
3. Search Student
4. Update Student
5. Delete Student
6. Calculate Grade
7. Exit
=================================
Enter your choice (1-7): 2
```

### 2. View All Students Table
```text
-----------------------------------------------------------------------------------------
                                   ALL REGISTERED STUDENTS                               
-----------------------------------------------------------------------------------------
| ID       | Name                 | Age  | Course     | Sem  | Marks   | Grade  |
|----------|----------------------|------|------------|------|---------|--------|
| S101     | Aarav Sharma         | 20   | BCA        | 4    | 92.50   | A+     |
| S102     | Priya Patel          | 19   | BCA        | 2    | 84.00   | A      |
| S103     | Rohan Verma          | 21   | B.Tech     | 6    | 76.50   | B      |
| S104     | Sneha Gupta          | 20   | BSc CS     | 3    | 63.00   | C      |
| S105     | Vikram Singh         | 22   | MCA        | 2    | 48.00   | F      |
-----------------------------------------------------------------------------------------
 Total Students: 5   |   Class Average Marks: 72.80%
```

### 3. Student Record Card
```text
+----------------------------------------+
| Student ID : S101                      |
| Name       : Aarav Sharma              |
| Age        : 20                        |
| Course     : BCA                       |
| Semester   : 4                         |
| Marks      : 92.50                     |
| Grade      : A+ (Outstanding Performance) |
+----------------------------------------+
```

---

## 📊 Academic Grading Scale

| Marks Range (%) | Letter Grade | Academic Remark |
| :--- | :---: | :--- |
| **90.0 – 100.0** | **A+** | Outstanding Performance |
| **80.0 – 89.9** | **A** | Excellent Performance |
| **70.0 – 79.9** | **B** | Very Good Performance |
| **60.0 – 69.9** | **C** | Good Performance |
| **50.0 – 59.9** | **D** | Pass / Satisfactory |
| **Below 50.0** | **F** | Fail (Needs Improvement) |

---

## 🔮 Future Improvements

- [ ] Export student grade reports to PDF / Excel.
- [ ] Implement multi-subject marks breakdown and GPA calculation.
- [ ] Add sorting by Name, Marks, or Semester in the View All table.
- [ ] Introduce a graphical user interface (JavaFX or Swing).
- [ ] Connect with relational databases (MySQL / PostgreSQL via JDBC).

---

## 👤 Author

- **Project Name**: Java First – Student Management System
- **Intended Audience**: BCA / Computer Science Students & Java Beginners
- **Repository**: `java-fist`
- **License**: MIT License
