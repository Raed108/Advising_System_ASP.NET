﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Student_ViewAllRequiredCourses.aspx.cs" Inherits="Advising_System.Student_ViewAllRequiredCourses" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>All Required Courses</title>
    <style>
              body {
    font-family: Arial, sans-serif;
    background: url('Images/EujDw0.jpg') center center fixed;
    background-size: cover;
    background-repeat: no-repeat;
    margin: 0;
    padding: 0;
    display: flex;
    align-items: center;
    justify-content: center;
    height: 100vh;
}

      form {
    background-color: #f0f2f5; /* Slightly dark grey */
    padding: 50px;
    border-radius: 70px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    box-sizing: border-box;
    text-align: center;
    width: 100%; /* Adjusted width to be proportional */
    max-width: 400px; /* Set a maximum width for larger screens */
    border: 10px solid white; /* Thin white border */
}

        h2 {
            text-align: center;
            color: #333;
        }

        #form1 {
            width: 100%;
        }

        #SuccessLabel {
            margin-bottom: 20px;
        }

        #Semester_Code,
        #Button2,
        #BackStudentHome2 {
            margin-bottom: 20px;
        }

        #Semester_CodeText,
        #faculty,
        #major,
        #semester {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        #Button2,
        #BackStudentHome2,
        #Register {
            background-color: #4CAF50;
            border: none;
            color: white;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            cursor: pointer;
            border-radius: 8px;
            padding: 10px 20px;
            transition-duration: 0.4s;
        }

        #Button2:hover,
        #BackStudentHome2:hover,
        #Register:hover {
            background-color: white;
            color: black;
            border: 2px solid #4CAF50;
        }

        #BackStudentHome2 {
            align-self: flex-end;
        }

        #BackAdminHome5 {
            margin-top: 20px;
        }
                #AllRequiredCourses {
    margin-top: 20px;
    border-collapse: collapse;
    width: 100%;
}

#AllRequiredCourses th,
#AllRequiredCourses td {
    padding: 10px;
    font-weight: bold; /* Set text to bold */
    color: black;
    border: 2px solid dimgray; /* Set table borders to white and thicker */
}

#AllRequiredCourses th {
    background-color: gray; /* Table header background color */
    color:black ;
}
 #sidebar {
     background: #2c3e50;
     padding: 1em;
     height: 100vh;
     width: 240px;
     box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
     position: fixed;
     left: -240px;
     transition: left 0.3s ease;
     overflow-y: auto;
     color: #ecf0f1;
     border-radius: 5px;
     background-image: linear-gradient(to bottom, rgba(0, 0, 0, 0.1) 0%, rgba(0, 0, 0, 0) 100%);
 }

 #sidebar::-webkit-scrollbar {
     width: 10px;
     background-color: #2c3e50;
 }

 #sidebar::-webkit-scrollbar-thumb {
     background-color: #34495e;
     border-radius: 5px;
 }

 #sidebar::-webkit-scrollbar-thumb:hover {
     background-color: #2980b9;
 }

 #sidebar-header {
     font-size: 20px;
     font-weight: bold;
     margin-bottom: 10px;
     text-align: center;
     color: #3498db;
 }


 #sidebar ul {
     list-style-type: none;
     margin: 0;
     padding: 0;
 }

 #sidebar li {
     margin-bottom: 12px;
 }

 #sidebar a {
     display: block;
     color: #ecf0f1;
     text-decoration: none;
     padding: 10px;
     border-radius: 5px;
     transition: background 0.3s ease, color 0.3s ease;
     transform: scale(1);
     transition: transform 0.2s ease-in-out;
 }

 #sidebar a:hover {
     background: #34495e;
     color: #3498db;
     transform: scale(1.1);
 }

 #toggle-btn {
   cursor: pointer;
   position: fixed;
   top: 20px;
   left: 20px;
   z-index: 3;
   color: cornflowerblue;
   font-size: 20px; /* Reduced font size for smaller button */
   border: none;
   border-radius: 50%; /* Maintains round shape */
   padding: 1px; /* Reduced padding to match smaller size */
   box-shadow: 0 0 5px rgba(0, 0, 0, 0.2); /* Adjusted shadow for smaller size */
   transition: background-color 0.3s ease; /* Removed transition for left position as it's fixed */
 }


 #toggle-btn:hover {
     background-color: #2980b9;
 }

 #toggle-btn::before {
     content: "\2261";
     font-size: 24px; /* Adjusted font size */
 }

 .sidebar-opened #toggle-btn {
     left: 240px;
 }
    </style>
</head>
<body>
    <div id="sidebar">
    <div id="sidebar-header">Contents</div>
        <ul>
            <li><a href="/StudentHome.aspx">Home</a></li>
 <li><a href="/Student_ViewGradPlan.aspx">View graduation plan along with assigned courses</a></li>
 <li><a href="/Student_ViewNotPaidInst.aspx">View upcoming not paid installment</a></li>
 <li><a href="/Student_ViewCoursesWithExams.aspx">View courses with their exams details</a></li>
 <li><a href="/Student_FirstMakeupRegister.aspx">Register for first makeup exam</a></li>
 <li><a href="/Student_SecondMakeupRegister.aspx">Register for second makeup exam</a></li>
 <li><a href="/Student_ViewCoursesWithSlotsAndInstructors.aspx">View courses with their corresponding slots and instructors</a></li>
 <li><a href="/Student_ViewSlotsForCourse.aspx">View slots of a certain course</a></li>
 <li><a href="/Student_ChooseInstructorForCourse.aspx">Choose instructor for a certain course</a></li>
 <li><a href="/Student_ViewCoursesWithPrereq.aspx">View details of courses with their prerequisites</a></li>
 <li><a href="/Student_AddPhoneNum.aspx">Add Phone Number</a></li>
 <li><a href="/Student_ViewMissingCourses.aspx">View Missing Courses</a></li>
 <li><a href="/Student_ViewAllCoursesCurrentSemester.aspx">View All Available Courses in Your Current semester</a></li>
 <li><a href="/Student_ViewAllOptionalCourses.aspx">View All Optional Courses</a></li>
 <li><a href="/Student_ViewAllRequiredCourses.aspx">View All Required Courses</a></li>
 <li><a href="/Student_Registration.aspx">Student Regiseration</a></li>
 <li><a href="/Student_SendRequest.aspx">Student Send Request</a></li>
        </ul>
</div>
    <form id="form1" runat="server">
        <div>
            <h2>Required Courses</h2>
            <div>
                <asp:Label ID="SuccessLabel" runat="server" Text="Add Inputs" ForeColor="Blue" Visible="false"></asp:Label>
            </div>
            <div>
                <asp:Label ID="Semester_Code" runat="server" Text="Semester Code"></asp:Label>
                <asp:TextBox ID="Semester_CodeText" runat="server"></asp:TextBox>
            </div>
            <div>
                <asp:Button ID="Button2" runat="server" OnClick="Get_RequiredCourses" Text="Show Courses" />
            </div>
            <div>
                <asp:GridView ID="AllRequiredCourses" runat="server" AutoGenerateColumns="False">
                    <Columns>
                        <asp:BoundField DataField="name" HeaderText="Course Name" />
                        <asp:BoundField DataField="course_id" HeaderText="Course ID" />
                    </Columns>
                </asp:GridView>
            </div>
            <div>
                <asp:Button ID="BackStudentHome2" runat="server" OnClick="BackStudentHome" Text="Back" />
            </div>
        </div>
    </form>
    <div id="toggle-btn"></div>

<script>
    const sidebar = document.getElementById('sidebar');
    const content = document.getElementById('content');
    const toggleBtn = document.getElementById('toggle-btn');

    toggleBtn.addEventListener('click', () => {
        const sidebarWidth = sidebar.offsetWidth;

        if (sidebar.style.left === '0px' || sidebar.style.left === '') {
            sidebar.style.left = `-${sidebarWidth}px`;
            content.style.marginLeft = '0';
        } else {
            sidebar.style.left = '0';
            content.style.marginLeft = `${sidebarWidth}px`;
        }
    });
</script>
</body>
</html>
