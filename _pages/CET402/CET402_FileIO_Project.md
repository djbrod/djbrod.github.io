
---
title: ""
permalink: /teaching/CET402_FileIO_Project
---

# Problem Specification
*File I/O Big Project - Example Java Users!*
<br/>

__1. Problem Description__
  - Use generated ExampleJavaUsers.txt data file as datasource
  - Create a User class with the following properties:
    - Id
    - UserName
    - UserPhoneNumber
    - UserEmail
    - CreatedDate
    - UserStreetAddress
    - UserCityName
    - UserZipCode
  - Create a constructor for the User class that takes in all of the mentioned properties and sets them to the objects class variables
  - Open the file using a FileInputStream or a BufferedReader
  - Create an array (User[] users) with size 101 to hold all of the example users
  - Loop through the opened file with the Stream and append to the users array a new User with the incoming data from the Stream (stream.readLine())
    - Note need to split the line by delimiter ',' to get the properties of the User.
  - The loop through the users array and print out the users properties with a new line after each user
  - Loop through the users array again and filter users by Id greater than 50 (setting the user at index > 50 to null)
  - Create a new file called 'filteredExampleJavaUsers.txt
  - Create a FileOutputStream
  - Loop through the users array and check whether the user is null
    - If not null, write the user's properties to the output file, adding a new line after the last property of the user
  - Verify that the new file is created.
- Learning Outcome:
  - Using generated data to look through, filter and create utility classes to work with data given for needed tasks
  - Open and write to different files as well as working with File and String class methods

__2. What to Turn In__

- A screenshot of the output from the program.
- The User class you created to work with the data provided.
- A screenshot of the filtered file data. (Open in Notepad and screenshot :D)