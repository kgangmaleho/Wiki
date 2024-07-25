**VWSA**

***PPSO for Special Markets***

***Test Cases***

<span id="_Toc484093250" class="anchor"></span>

Confidentiality and Copyright

Proprietary, confidential data. All rights reserved.

Distribution and/or reproduction of these documents or any of their
parts, their utilisation or communication of their contents to third
parties is not allowed, unless formally conceded. Contravention will
cause damages.

Copyright © 2019 by S4 Integration (Pty) Ltd.

S4 Integration (Pty) Ltd.

1 Leadwood Crescent

Fairview

Port Elizabeth

South Africa

6065

[www.s4.co.za](http://www.s4.co.za)

# **Table of** **Contents**

[Confidentiality and Copyright 2](#_Toc484093250)

[1.1 Change History 4](#change-history)

[1.2 Review Record 4](#review-record)

[2 System Overview 5](#system-overview)

[3 Test Cases 6](#test-cases)

[3.1 Single sign-on 6](#_Toc80103402)

[3.2 Maintain Model](#_Toc80103403)

[3.3 Maintain Service 8](#_Toc80103404)

[3.4 User Fleet Menu](#_Toc80103405)

[3.5 Total Cost of Servicing 1](#_Toc80103405)

7101

## Change History

| **Date**   | **Version** | **Changed Chapters**     | **Author**    |
| ---------- | ----------- | ------------------------ | ------------- |
| 2021/09/20 | 1.0.0       | Initial Document         | Olwethu Mbada |
| 2021/10/01 | 1.0.1       | Phase 2 test cases       | Robert Zeelie |
| 2021/10/13 | 1.0.2       | Phase 3 test cases       | Storm Chambel |
| 2022/02/16 | 1.0.3       | Phase 4 and 5 test cases | Storm Chambel |
| 2023/11/01 | 1.1.0       | CR001 test cases         | Johan Stander |

## Review Record

| **Date**   | **Reviewed Version** | **Comments**     | **Reviewer**  |
| ---------- | -------------------- | ---------------- | ------------- |
| 2021/09/20 | 1.0.0                | Initial Document | Olwethu Mbada |
|            |                      |                  |               |
|            |                      |                  |               |

# System Overview

An on-line system that simplifies the process of retrieving vehicle
service data that enables Special Market clients (Rental, Leasing Fleet
and Government) customers the ability to access the parts system, labour
operation codes and time units so that they can develop their own parts
baskets.

# Test Cases

## Single Sign-On

<table>
<thead>
<tr class="header">
<th><strong>Login</strong></th>
<th></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><strong>Trigger</strong></td>
<td><strong>Navigation to the Administrator menu page</strong></td>
</tr>
<tr class="even">
<td><strong>Normal Flow</strong></td>
<td><ol type="1">
<li><p>Login is Sharepoint and click on the URL for the Application.</p></li>
</ol></td>
</tr>
<tr class="odd">
<td><strong>Expected Result</strong></td>
<td><strong>User is automatically validated and redirected to the VW Administrator menu page.</strong></td>
</tr>
<tr class="even">
<td><strong>Actual Result</strong></td>
<td><p><strong>User is automatically validated and redirected to the VW Administrator menu page.</strong></p>
<p><img src="src/media/image1.png" style="width:4.91319in;height:2.03611in" /></p></td>
</tr>
</tbody>
</table>

## Maintain Model

<table>
<thead>
<tr class="header">
<th><strong>Maintain Model</strong></th>
<th></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><strong>Trigger</strong></td>
<td><strong>Navigate to Maintain Model Reference Vin on Administrator menu.</strong></td>
</tr>
<tr class="even">
<td><strong>Normal Flow</strong></td>
<td><ol type="1">
<li><p>Click the “Maintain Model Reference Vin” button.</p></li>
<li><p>Choose a Brand.</p></li>
<li><p>Choose a Model.</p></li>
<li><p>Enter Vin.</p></li>
<li><p>Click on Save.</p></li>
</ol></td>
</tr>
<tr class="odd">
<td><strong>Expected Result</strong></td>
<td><strong>The system returns a response to indicate the Vin is saved.</strong></td>
</tr>
<tr class="even">
<td><strong>Actual Result</strong></td>
<td><p>The system returns a response that the Vin is saved.</p>
<p><img src="src/media/image2.png" style="width:4.69444in;height:0.74167in" /></p></td>
</tr>
</tbody>
</table>

## Maintain Service

<table>
<thead>
<tr class="header">
<th><strong>Save maintain service</strong></th>
<th></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><strong>Trigger</strong></td>
<td><strong>Navigate to Maintain Service data for a Model.</strong></td>
</tr>
<tr class="even">
<td><strong>Normal Flow</strong></td>
<td><ol type="1">
<li><p>Click on “Maintain Service Data for a Model” button.</p></li>
<li><p>Select a Brand.</p></li>
<li><p>Select a Model.</p></li>
<li><p>Choose the delivery date.</p></li>
<li><p>Select Start Mileage.</p></li>
<li><p>Select End Mileage.</p></li>
<li><p>Select Lifespan.</p></li>
<li><p>Click “Save”.</p></li>
</ol></td>
</tr>
<tr class="odd">
<td><strong>Expected Result</strong></td>
<td><strong>The service data for that Vin is updated.</strong></td>
</tr>
<tr class="even">
<td><strong>Actual Result</strong></td>
<td><p>The service data for that Vin is updated.</p>
<p><img src="src/media/image3.png" style="width:4.21806in;height:0.60347in" /></p></td>
</tr>
<tr class="odd">
<td><strong>Process Vin</strong></td>
<td></td>
</tr>
<tr class="even">
<td><strong>Trigger</strong></td>
<td><strong>“Process” Button clicked</strong></td>
</tr>
<tr class="odd">
<td><strong>Normal Flow</strong></td>
<td><ol start="9" type="1">
<li><p>Click on “Maintain Service Data for a Model” button.</p></li>
<li><p>Select a Brand.</p></li>
<li><p>Select a Model.</p></li>
<li><p>Click “Process”.</p></li>
</ol></td>
</tr>
<tr class="even">
<td><strong>Expected Result</strong></td>
<td><p><strong>- The data is populated with the saved data.</strong></p>
<p><strong>- Pat response processed.<br />
- Pat intervals are processed.</strong></p>
<p><strong>- PPSO is processed.</strong></p></td>
</tr>
<tr class="odd">
<td><strong>Actual Result</strong></td>
<td><p><strong>- The data is populated with the saved data.</strong></p>
<p><strong>- Pat response processed.<br />
- Pat intervals are processed.</strong></p>
<p><strong>- PPSO is processed.</strong></p>
<p><img src="src/media/image4.png" style="width:4.32569in;height:0.60139in" /></p>
<p><img src="src/media/image5.png" style="width:4.35208in;height:0.59444in" /></p>
<p><img src="src/media/image6.png" style="width:4.35486in;height:0.61042in" /></p></td>
</tr>
</tbody>
</table>

## Delete Maintain Model Service Data

<table>
<thead>
<tr class="header">
<th><strong>Delete Service Data for a Model</strong></th>
<th></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><strong>Trigger</strong></td>
<td><strong>Navigate to Delete Service Data for a Model on Administrator menu.</strong></td>
</tr>
<tr class="even">
<td><strong>Normal Flow</strong></td>
<td><ol start="6" type="1">
<li><p>Click the “Delete Service Data for a Model” button.</p></li>
<li><p>Choose a Brand.</p></li>
<li><p>Choose a Model.</p></li>
<li><p>The Vin should fill in the box if that model has a Vin.</p></li>
<li><p>Click on Delete.</p></li>
</ol></td>
</tr>
<tr class="odd">
<td><strong>Expected Result</strong></td>
<td><strong>The Vin will appear and the system returns a response to indicate the Vin is deleted.</strong></td>
</tr>
<tr class="even">
<td><strong>Actual Result</strong></td>
<td><p>The Vin appears for system returns a response that the Vin is deleted.</p>
<p><img src="src/media/image7.png" style="width:4.55in;height:0.74167in" alt="Screenshot 2021-10-04 085833" /></p></td>
</tr>
</tbody>
</table>

## User Fleet Menu

<table>
<thead>
<tr class="header">
<th><strong>User Fleet Menu</strong></th>
<th></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><strong>Trigger</strong></td>
<td><strong>User fleet menu</strong></td>
</tr>
<tr class="even">
<td><strong>Normal Flow</strong></td>
<td><ol type="1">
<li><p>The user should be logged in on the Sharepoint site.</p></li>
<li><p>Click on the URL for the application.</p></li>
</ol></td>
</tr>
<tr class="odd">
<td><strong>Expected Result</strong></td>
<td><p><strong>- The application automatically validates the fleet user.</strong></p>
<p><strong>- The application automatically redirects the fleet user to the fleet user menu.</strong></p></td>
</tr>
<tr class="even">
<td><strong>Actual Result</strong></td>
<td><p><strong>- The application automatically validates the fleet user.</strong></p>
<p><strong>- The application automatically redirects the fleet user to the fleet user menu.</strong></p>
<p><img src="src/media/image8.png" style="width:5.53472in;height:2.82361in" /></p></td>
</tr>
</tbody>
</table>

## Total Cost of Servicing

<table>
<thead>
<tr class="header">
<th><strong>Total cost of Servicing (Mileage)</strong></th>
<th></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><strong>Trigger</strong></td>
<td><strong>Total cost of servicing a Vehicle in mileages.</strong></td>
</tr>
<tr class="even">
<td><strong>Normal Flow</strong></td>
<td><ol type="1">
<li><p>Click the “Total Cost of Servicing” button.</p></li>
<li><p>From the pop up click the “Mileage” button.</p></li>
<li><p>Select Volkswagen Brand.</p></li>
<li><p>Select Select any Model.</p></li>
<li><p>Select All Mileage.</p></li>
</ol></td>
</tr>
<tr class="odd">
<td><strong>Expected Result</strong></td>
<td><p><strong>- The Total cost of servicing a vehicle screen appears.</strong></p>
<p><strong>- A list of the total cost of servicing a vehicle for different mileages, with parts, part number, description, time unit, quantity and price appears.</strong></p></td>
</tr>
<tr class="even">
<td><strong>Actual Result</strong></td>
<td><p><strong>- The Total cost of servicing a vehicle screen appears.</strong></p>
<p><strong>- A list of the total cost of servicing a vehicle for different mileages, with parts, part number, description, time unit, quantity and price appears.</strong></p>
<p><img src="src/media/image9.png" style="width:5.37679in;height:3.08333in" /></p></td>
</tr>
<tr class="odd">
<td><strong>Extracting the total cost of servicing table.</strong></td>
<td></td>
</tr>
<tr class="even">
<td><strong>Trigger</strong></td>
<td><strong>Extracting the total cost of servicing a vehicle information.</strong></td>
</tr>
<tr class="odd">
<td><strong>Normal Flow</strong></td>
<td><ol start="6" type="1">
<li><p>Click the “Extract” button.</p></li>
<li><p>From the menu select Excel button.</p></li>
<li><p>Click the “Save” button.</p></li>
</ol></td>
</tr>
<tr class="even">
<td><strong>Expected Result</strong></td>
<td><strong>An excel document is automatically downloaded.</strong></td>
</tr>
<tr class="odd">
<td><strong>Actual Result</strong></td>
<td><strong>An excel document is automatically downloaded.</strong></td>
</tr>
</tbody>
</table>

<table>
<thead>
<tr class="header">
<th><strong>Total cost of Servicing (Time)</strong></th>
<th></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><strong>Trigger</strong></td>
<td><strong>Total cost of servicing a Vehicle in Time.</strong></td>
</tr>
<tr class="even">
<td><strong>Normal Flow</strong></td>
<td><ol type="1">
<li><p>Click the “Total Cost of Servicing” button.</p></li>
<li><p>From the pop up click the “Mileage” button.</p></li>
<li><p>Select Volkswagen Brand.</p></li>
<li><p>Select Select any Model.</p></li>
<li><p>Select All Mileage.</p></li>
</ol></td>
</tr>
<tr class="odd">
<td><strong>Expected Result</strong></td>
<td><p><strong>- The Total cost of servicing a vehicle screen appears.</strong></p>
<p><strong>- A list of the total cost of servicing a vehicle for different times in months, with parts, part number, description, time unit, quantity and price appears.</strong></p></td>
</tr>
<tr class="even">
<td><strong>Actual Result</strong></td>
<td><p><strong>- The Total cost of servicing a vehicle screen appears.</strong></p>
<p><strong>- A list of the total cost of servicing a vehicle for different times in months, with parts, part number, description, time unit, quantity and price appears.</strong></p>
<p><img src="src/media/image10.png" style="width:5.4138in;height:3.26042in" /></p></td>
</tr>
</tbody>
</table>

<table>
<thead>
<tr class="header">
<th><strong>Hrs Column</strong></th>
<th></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><strong>Trigger</strong></td>
<td><strong>Event is selected on TCOS screen</strong></td>
</tr>
<tr class="even">
<td><strong>Normal Flow</strong></td>
<td><ol type="1">
<li><p>On the Fleet Portal, navigate to the Total Cost of Servicing screen</p></li>
<li><p>Click “OK” on the popup that appears</p></li>
<li><p>Select a Brand</p></li>
<li><p>Select a Model Code that has service data linked to it</p></li>
<li><p>Select “Mileage - All” for the Event</p></li>
</ol></td>
</tr>
<tr class="odd">
<td><strong>Expected Result</strong></td>
<td><strong>“Hrs” column visible in table with relevant conversion</strong></td>
</tr>
<tr class="even">
<td><strong>Actual Result</strong></td>
<td><p><strong>Pass</strong></p>
<p><img src="src/media/image11.png" style="width:4.80486in;height:2.35208in" /></p></td>
</tr>
</tbody>
</table>

## View Packages

<table>
<thead>
<tr class="header">
<th><strong>View Packages</strong></th>
<th></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><strong>Trigger</strong></td>
<td><strong>View Packages</strong></td>
</tr>
<tr class="even">
<td><strong>Normal Flow</strong></td>
<td><ol type="1">
<li><p>Click the “View Packages” button.</p></li>
<li><p>Select Volkswagen Brand.</p></li>
<li><p>Select Select any Model.</p></li>
<li><p>Click “Load” button.</p></li>
<li><p>Select Package Category provided in drop down.</p></li>
<li><p>Select Package Sub Category provided in drop down.</p></li>
</ol></td>
</tr>
<tr class="odd">
<td><strong>Expected Result</strong></td>
<td><p><strong>- View package data of a package should appear.</strong></p>
<p><strong>- A list of the view package data of a VIN, with type, package number, description, time unit, quantity.</strong></p></td>
</tr>
<tr class="even">
<td><strong>Actual Result</strong></td>
<td><p><strong>- View package data of a package appears.</strong></p>
<p><strong>- A list of the view package data of a VIN, with type, package number, description, time unit, quantity.</strong></p>
<p><img src="src/media/image12.png" style="width:5.54028in;height:2.78819in" alt="C:\Users\S4\Pictures\View Packages.PNGView Packages" /></p></td>
</tr>
</tbody>
</table>

<table>
<thead>
<tr class="header">
<th><strong>Extracting View Packages Table</strong></th>
<th></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><strong>Trigger</strong></td>
<td><strong>Extracting the total cost of servicing a vehicle information.</strong></td>
</tr>
<tr class="even">
<td><strong>Normal Flow</strong></td>
<td><ol start="7" type="1">
<li><p>Click the “Extract” button.</p></li>
<li><p>From the menu select Excel button.</p></li>
</ol>
<ol start="9" type="1">
<li><p>Click the “Save” button.</p></li>
</ol></td>
</tr>
<tr class="odd">
<td><strong>Expected Result</strong></td>
<td><strong>An excel document is automatically downloaded.</strong></td>
</tr>
<tr class="even">
<td><strong>Actual Result</strong></td>
<td><strong>An excel document is automatically downloaded.</strong></td>
</tr>
</tbody>
</table>

## Vehicle Service History

<table>
<thead>
<tr class="header">
<th><strong>Vehicle Service History</strong></th>
<th></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><strong>Trigger</strong></td>
<td><strong>Vehicle Service History</strong></td>
</tr>
<tr class="even">
<td><strong>Normal Flow</strong></td>
<td><ol type="1">
<li><p>Click the Vehicle Service History Button</p></li>
<li><p>Enter VIN</p></li>
<li><p>Click the Check Button</p></li>
</ol></td>
</tr>
<tr class="odd">
<td><strong>Expected Result</strong></td>
<td><p><strong>- Vehicle Service History should appear.</strong></p>
<p><strong>- A list of the vehicle service history data of a VIN, service date, mileage, type, description, time unit and quantity.</strong></p></td>
</tr>
<tr class="even">
<td><strong>Actual Result</strong></td>
<td><p><strong>- Vehicle Service History appears.</strong></p>
<p><strong>- A list of the vehicle service history data of a VIN, service date, mileage, type, description, time unit and quantity.</strong><img src="src/media/image13.png" style="width:5.45069in;height:2.6125in" alt="VSH-Service History Successfully Loaded" /></p></td>
</tr>
<tr class="odd">
<td><strong>Extracting View Packages Table</strong></td>
<td></td>
</tr>
<tr class="even">
<td><strong>Trigger</strong></td>
<td><strong>Extracting the vehicle service history.</strong></td>
</tr>
<tr class="odd">
<td><strong>Normal Flow</strong></td>
<td><ol type="1">
<li><p>On the Fleet Portal, navigate to the Vehicle Service History screen</p></li>
<li><p>Enter a valid VIN number</p></li>
<li><p>Click the “Check” button</p></li>
<li><p>Click the “Extract” button</p></li>
<li><p>Click either of the buttons in the popup that appears</p></li>
</ol></td>
</tr>
<tr class="even">
<td><strong>Expected Result</strong></td>
<td><strong>An excel document is automatically downloaded.</strong></td>
</tr>
<tr class="odd">
<td><strong>Actual Result</strong></td>
<td><strong>An excel document is automatically downloaded.</strong></td>
</tr>
</tbody>
</table>

## Check Campaigns

<table>
<thead>
<tr class="header">
<th><strong>Check Campaigns</strong></th>
<th></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><strong>Trigger</strong></td>
<td><strong>Check Campaigns</strong></td>
</tr>
<tr class="even">
<td><strong>Normal Flow</strong></td>
<td><ol type="1">
<li><p>Click on the Check Campaigns Button</p></li>
<li><p>Enter a valid VIN in the text box</p></li>
<li><p>Click the Check button</p></li>
</ol></td>
</tr>
<tr class="odd">
<td><strong>Expected Result</strong></td>
<td><strong>-Information as to whether there is a campaign available or not should appear</strong></td>
</tr>
<tr class="even">
<td><strong>Actual Result</strong></td>
<td><p>-Information as to whether there is a campaign available or not appears</p>
<p><img src="src/media/image14.png" style="width:5.42292in;height:2.42569in" alt="snip3" /></p></td>
</tr>
</tbody>
</table>

## Part Number Look Up

<table>
<thead>
<tr class="header">
<th><strong>Part Number Look Up</strong></th>
<th></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><strong>Trigger</strong></td>
<td><strong>Part Number Look Up</strong></td>
</tr>
<tr class="even">
<td><strong>Normal Flow</strong></td>
<td><ol type="1">
<li><p>Click on part number look up button</p></li>
<li><p>Enter part number or super seeded part number</p></li>
<li><p>Click price</p></li>
</ol></td>
</tr>
<tr class="odd">
<td><strong>Expected Result</strong></td>
<td><strong>-Information on the specified part number should appear</strong></td>
</tr>
<tr class="even">
<td><strong>Actual Result</strong></td>
<td><p>-<strong>Information on the specified part number appears</strong></p>
<p><img src="src/media/image15.png" style="width:5.43194in;height:1.22361in" alt="part number" /></p></td>
</tr>
</tbody>
</table>

## Crafter Service Intervals

<table>
<thead>
<tr class="header">
<th><strong>View Total Cost of Servicing</strong></th>
<th></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><strong>Trigger</strong></td>
<td><strong>Crafter Model Code selected.</strong></td>
</tr>
<tr class="even">
<td><strong>Normal Flow</strong></td>
<td><ol type="1">
<li><p>On the Fleet portal, navigate to the “Total Cost of Servicing”</p></li>
<li><p>Select a Brand</p></li>
<li><p>Select a Model Code that belongs to a crafter (As defined on Maintain Service Intervals screen)</p></li>
</ol></td>
</tr>
<tr class="odd">
<td><strong>Expected Result</strong></td>
<td><strong>Mileages in dropdown are displayed in an interval defined on</strong> Maintain Service Intervals screen (e.g. 20000)</td>
</tr>
<tr class="even">
<td><strong>Actual Result</strong></td>
<td><p><strong>Mileages in dropdown are displayed in an interval defined on</strong> Maintain Service Intervals screen (e.g. 20000)</p>
<p><img src="src/media/image16.png" style="width:4.28118in;height:3.53125in" /></p></td>
</tr>
</tbody>
</table>

<table>
<thead>
<tr class="header">
<th><strong>Maintain Service Data for Model</strong></th>
<th></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><strong>Trigger</strong></td>
<td><strong>Packages are saved on Maintain Service Data for a Model (PPSO) screen.</strong></td>
</tr>
<tr class="even">
<td><strong>Normal Flow</strong></td>
<td><ol type="1">
<li><p>On the Admin Portal, navigate to <strong>Maintain Service Data for a Model (PPSO) screen.</strong></p></li>
<li><p>Select a Brand</p></li>
<li><p>Select a Model Code that belongs to a crafter (As defined on Maintain Service Intervals screen)</p></li>
<li><p>Select “Mileage” for Event Type</p></li>
<li><p>Select a Package Category</p></li>
<li><p>Drag a package from the left to the right</p></li>
<li><p>Click “Save” button at bottom of the page</p></li>
</ol></td>
</tr>
<tr class="odd">
<td><strong>Expected Result</strong></td>
<td><strong>Mileages in popup are displayed in an interval defined on</strong> Maintain Service Intervals screen (e.g. 20000)</td>
</tr>
<tr class="even">
<td><strong>Actual Result</strong></td>
<td><p><strong>Pass</strong></p>
<p><img src="src/media/image17.png" style="width:2.83333in;height:3.49918in" /></p></td>
</tr>
</tbody>
</table>

## Crafter Service Intervals

<table>
<thead>
<tr class="header">
<th><strong>Create Service Interval entry</strong></th>
<th></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><strong>Trigger</strong></td>
<td><strong>User adds a new Service Interval</strong></td>
</tr>
<tr class="even">
<td><strong>Normal Flow</strong></td>
<td><ol type="1">
<li><p>On the Admin Portal, navigate to <strong>Maintain Service Intervals screen</strong></p></li>
<li><p>Click on the “+” button to the top right of the datagrid</p></li>
<li><p>Select a Model Code</p></li>
<li><p>Enter an interval</p></li>
<li><p>Click the “Save” button <img src="src/media/image18.png" style="width:0.20836in;height:0.20836in" /></p></li>
</ol></td>
</tr>
<tr class="odd">
<td><strong>Expected Result</strong></td>
<td><strong>A new Service Interval is saved for the Model Code</strong></td>
</tr>
<tr class="even">
<td><strong>Actual Result</strong></td>
<td><p><strong>Pass</strong></p>
<p><img src="src/media/image19.png" style="width:4.80486in;height:1.16389in" /></p>
<p><img src="src/media/image20.png" style="width:4.80486in;height:1.17361in" /></p></td>
</tr>
</tbody>
</table>

<table>
<thead>
<tr class="header">
<th><strong>View Service Interval entries</strong></th>
<th></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><strong>Trigger</strong></td>
<td><strong>User navigates to Maintain Service Intervals screen</strong></td>
</tr>
<tr class="even">
<td><strong>Normal Flow</strong></td>
<td><ol type="1">
<li><p>On the Admin Portal, navigate to <strong>Maintain Service Intervals screen</strong></p></li>
</ol></td>
</tr>
<tr class="odd">
<td><strong>Expected Result</strong></td>
<td><strong>Existing Service Intervals are displayed</strong></td>
</tr>
<tr class="even">
<td><strong>Actual Result</strong></td>
<td><p><strong>Pass</strong></p>
<p><img src="src/media/image21.png" style="width:4.80486in;height:1.15in" /></p></td>
</tr>
</tbody>
</table>

<table>
<thead>
<tr class="header">
<th><strong>Update Service Interval entry</strong></th>
<th></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><strong>Trigger</strong></td>
<td><strong>User updates an existing Service Interval</strong></td>
</tr>
<tr class="even">
<td><strong>Normal Flow</strong></td>
<td><ol type="1">
<li><p>On the Admin Portal, navigate to <strong>Maintain Service Intervals screen</strong></p></li>
<li><p>Click on the “Edit” <img src="src/media/image22.png" style="width:0.20836in;height:0.20836in" /> button to the right of the desired row</p></li>
<li><p>Make any relevant edits to the data</p></li>
<li><p>Click the “Save” <img src="src/media/image23.png" style="width:0.2292in;height:0.2292in" /> button</p></li>
</ol></td>
</tr>
<tr class="odd">
<td><strong>Expected Result</strong></td>
<td><strong>Service Interval entry is updated</strong></td>
</tr>
<tr class="even">
<td><strong>Actual Result</strong></td>
<td><p><strong>Pass</strong></p>
<p><img src="src/media/image24.png" style="width:4.80486in;height:1.16458in" /></p></td>
</tr>
</tbody>
</table>

<table>
<thead>
<tr class="header">
<th><strong>Delete Service Interval entry</strong></th>
<th></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><strong>Trigger</strong></td>
<td><strong>User clicks “Delete”</strong> <img src="src/media/image25.png" style="width:0.19794in;height:0.21878in" /> <strong>button</strong></td>
</tr>
<tr class="even">
<td><strong>Normal Flow</strong></td>
<td><ol type="1">
<li><p>On the Admin Portal, navigate to <strong>Maintain Service Intervals screen</strong></p></li>
<li><p>Click on the “Delete” <img src="src/media/image26.png" style="width:0.23962in;height:0.26045in" /> button to the right of the desired row</p></li>
<li><p>Click “Yes” on the popup that appears</p></li>
</ol></td>
</tr>
<tr class="odd">
<td><strong>Expected Result</strong></td>
<td><strong>Service Interval entry is deleted</strong></td>
</tr>
<tr class="even">
<td><strong>Actual Result</strong></td>
<td><p><strong>Pass</strong></p>
<p><img src="src/media/image21.png" style="width:4.80486in;height:1.15in" /></p></td>
</tr>
</tbody>
</table>

## Fluid Mapping

<table>
<thead>
<tr class="header">
<th><strong>Create Fluid Mapping Entry</strong></th>
<th></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><strong>Trigger</strong></td>
<td><strong>User clicks “+” button on Fluid Mapping component</strong></td>
</tr>
<tr class="even">
<td><strong>Normal Flow</strong></td>
<td><ol type="1">
<li><p>On the Admin Portal, navigate to the “Maintain Fluid Mapping Table” component</p></li>
<li><p>Click the “+” button to the top right of the datagrid</p></li>
<li><p>Enter a Pseudo Code for a fluid part</p></li>
<li><p>Enter a Part Number that will replace the Pseudo Code</p></li>
<li><p>Enter a Part Description</p></li>
<li><p>Click the “Save” <img src="src/media/image23.png" style="width:0.2292in;height:0.2292in" /> button</p></li>
</ol></td>
</tr>
<tr class="odd">
<td><strong>Expected Result</strong></td>
<td><strong>A New Fluid Mapping entry is created.</strong></td>
</tr>
<tr class="even">
<td><strong>Actual Result</strong></td>
<td><p><strong>Pass</strong></p>
<p><img src="src/media/image27.png" style="width:4.80486in;height:1.44514in" /></p></td>
</tr>
</tbody>
</table>

<table>
<thead>
<tr class="header">
<th><strong>View Fluid Mapping Entries</strong></th>
<th></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><strong>Trigger</strong></td>
<td><strong>User navigates to the “Maintain Fluid Mapping Table” screen</strong></td>
</tr>
<tr class="even">
<td><strong>Normal Flow</strong></td>
<td><ol type="1">
<li><p>On the Admin Portal, navigate to the “Maintain Fluid Mapping Table” screen</p></li>
</ol></td>
</tr>
<tr class="odd">
<td><strong>Expected Result</strong></td>
<td><strong>Existing Fluid Mappings are displayed</strong></td>
</tr>
<tr class="even">
<td><strong>Actual Result</strong></td>
<td><p><strong>Pass</strong></p>
<p><img src="src/media/image28.png" style="width:4.80486in;height:1.19167in" /></p></td>
</tr>
</tbody>
</table>

<table>
<thead>
<tr class="header">
<th><strong>Update Fluid Mapping Entry</strong></th>
<th></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><strong>Trigger</strong></td>
<td><strong>User edits an existing Fluid Mapping entry</strong></td>
</tr>
<tr class="even">
<td><strong>Normal Flow</strong></td>
<td><ol type="1">
<li><p>On the Admin Portal, navigate to the “Maintain Fluid Mapping Table” component</p></li>
<li><p>Click on the Edit <img src="src/media/image22.png" style="width:0.20836in;height:0.20836in" /> button to the right of the desired row</p></li>
<li><p>Make any relevant edits to the data</p></li>
<li><p>Click the “Save” <img src="src/media/image23.png" style="width:0.2292in;height:0.2292in" /> button</p></li>
</ol></td>
</tr>
<tr class="odd">
<td><strong>Expected Result</strong></td>
<td><strong>Fluid Mapping entry is updated</strong></td>
</tr>
<tr class="even">
<td><strong>Actual Result</strong></td>
<td><p><strong>Pass</strong></p>
<p><img src="src/media/image29.png" style="width:4.80486in;height:1.17847in" /></p></td>
</tr>
</tbody>
</table>

<table>
<thead>
<tr class="header">
<th><strong>Delete Fluid Mapping Entry</strong></th>
<th></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><strong>Trigger</strong></td>
<td><strong>User clicks “Delete”</strong> <img src="src/media/image25.png" style="width:0.19794in;height:0.21878in" /> <strong>button</strong></td>
</tr>
<tr class="even">
<td><strong>Normal Flow</strong></td>
<td><ol type="1">
<li><p>On the Admin Portal, navigate to <strong>Maintain Fluid Mapping Table screen</strong></p></li>
<li><p>Click on the “Delete” <img src="src/media/image26.png" style="width:0.23962in;height:0.26045in" /> button to the right of the desired row</p></li>
<li><p>Click “Yes” on the popup that appears</p></li>
</ol></td>
</tr>
<tr class="odd">
<td><strong>Expected Result</strong></td>
<td><strong>Fluid Mapping entry is deleted</strong></td>
</tr>
<tr class="even">
<td><strong>Actual Result</strong></td>
<td><p><strong>Pass</strong></p>
<p><img src="src/media/image30.png" style="width:4.80486in;height:1.19861in" /></p></td>
</tr>
</tbody>
</table>

<table>
<thead>
<tr class="header">
<th><strong>View Total Cost of Servicing</strong></th>
<th></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><strong>Trigger</strong></td>
<td><strong>User selects an Event on the “Total Cost of Servicing” screen</strong></td>
</tr>
<tr class="even">
<td><strong>Normal Flow</strong></td>
<td><ol type="1">
<li><p>On the Fleet Portal, navigate to the “<strong>Total Cost of Servicing” screen</strong></p></li>
<li><p>Select Brand</p></li>
<li><p>Select a Model that has a Service with Fluid Parts (e.g. Oil Change Service)</p></li>
<li><p>Select “Mileage - All” in the Event dropdown</p></li>
</ol></td>
</tr>
<tr class="odd">
<td><strong>Expected Result</strong></td>
<td><strong>Pseudo Code in “Parts No/Labour Code” column is replaced with the mapped Part Number from the Fluid Mapping table</strong></td>
</tr>
<tr class="even">
<td><strong>Actual Result</strong></td>
<td><p><strong>Pass</strong></p>
<p><img src="src/media/image31.png" style="width:4.80486in;height:0.93681in" /></p></td>
</tr>
</tbody>
</table>

<table>
<thead>
<tr class="header">
<th><strong>View Packages</strong></th>
<th></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><strong>Trigger</strong></td>
<td><strong>User selects an Event on the View Packages screen</strong></td>
</tr>
<tr class="even">
<td><strong>Normal Flow</strong></td>
<td><ol type="1">
<li><p>On the Fleet Portal, navigate to the “<strong>View Packages” screen</strong></p></li>
<li><p>Select Brand</p></li>
<li><p>Select a Model Code or Enter a VIN</p></li>
<li><p>Click the “Load” button</p></li>
<li><p>Select a Package Category (e.g. Inspection Services)</p></li>
<li><p>Select a Package that has fluid part numbers (e.g. Oil Change Service)</p></li>
</ol></td>
</tr>
<tr class="odd">
<td><strong>Expected Result</strong></td>
<td><strong>Pseudo Code in “Number” column is replaced with the mapped Part Number from the Fluid Mapping table</strong></td>
</tr>
<tr class="even">
<td><strong>Actual Result</strong></td>
<td><p><strong>Pass</strong></p>
<p><img src="src/media/image32.png" style="width:4.80486in;height:0.91736in" /></p></td>
</tr>
</tbody>
</table>

## Usage Reports for Business

<table>
<thead>
<tr class="header">
<th><strong>View Usage Reports</strong></th>
<th></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><strong>Trigger</strong></td>
<td><strong>User navigates to the “View Usage Reports” screen</strong></td>
</tr>
<tr class="even">
<td><strong>Normal Flow</strong></td>
<td><ol type="1">
<li><p>On the Admin Portal, navigate to the “View usage Reports” <strong>screen</strong></p></li>
</ol></td>
</tr>
<tr class="odd">
<td><strong>Expected Result</strong></td>
<td><strong>Usage Reports from database displayed in datagrid</strong></td>
</tr>
<tr class="even">
<td><strong>Actual Result</strong></td>
<td><p><strong>Pass</strong></p>
<p><img src="src/media/image33.png" style="width:4.80486in;height:1.49028in" /></p></td>
</tr>
</tbody>
</table>

## Manual Data Maintenance

<table>
<thead>
<tr class="header">
<th><strong>Create Manual Service Data for Model Code</strong></th>
<th></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><strong>Trigger</strong></td>
<td><strong>User Navigates to “Maintain Service Data for a Model (PPSO)” screen and completes the form</strong></td>
</tr>
<tr class="even">
<td><strong>Normal Flow</strong></td>
<td><ol type="1">
<li><p>On the Admin Portal, navigate to the <strong>Maintain Service Data for a Model (PPSO) screen.</strong></p></li>
<li><p>Select a Brand</p></li>
<li><p>Select a Model Code</p></li>
<li><p>Select an Event Type</p></li>
<li><p>Select a Package Category</p></li>
<li><p>Drag desired packages from the left list to the right list</p></li>
<li><p>Click Save</p></li>
<li><p>On the popup that appears, select the mileages the packages should be copied to</p></li>
<li><p>Click the “Continue” button</p></li>
</ol></td>
</tr>
<tr class="odd">
<td><strong>Expected Result</strong></td>
<td><strong>Total Cost of Servicing now includes added packages’ parts</strong></td>
</tr>
<tr class="even">
<td><strong>Actual Result</strong></td>
<td><p><strong>Pass</strong></p>
<p><img src="src/media/image34.png" style="width:4.80486in;height:2.8125in" /></p></td>
</tr>
</tbody>
</table>

<table>
<thead>
<tr class="header">
<th><strong>Delete Manual Service Data For Model Code</strong></th>
<th></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><strong>Trigger</strong></td>
<td><strong>User clicks “Delete” on</strong> the “<strong>Maintain Service Data for a Model (PPSO)” screen</strong></td>
</tr>
<tr class="even">
<td><strong>Normal Flow</strong></td>
<td><ol type="1">
<li><p>On the Admin Portal, navigate to the “<strong>Maintain Service Data for a Model (PPSO)” screen.</strong></p></li>
<li><p>Select a Brand</p></li>
<li><p>Select a Model Code</p></li>
<li><p>Click the “Delete” button</p></li>
<li><p>On the popup that appears, click “Delete”</p></li>
</ol></td>
</tr>
<tr class="odd">
<td><strong>Expected Result</strong></td>
<td><strong>Total Cost of Servicing no longer includes added packages’ parts</strong></td>
</tr>
<tr class="even">
<td><strong>Actual Result</strong></td>
<td><p><strong>Pass</strong></p>
<p><img src="src/media/image35.png" style="width:4.80486in;height:1.80278in" /></p></td>
</tr>
</tbody>
</table>

## Implementation of Swagger Authentication

<table>
<thead>
<tr class="header">
<th><strong>Authenticate Swagger Portal</strong></th>
<th></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><strong>Trigger</strong></td>
<td><strong>User logs in to Swagger Portal for the PPSOSM backend</strong></td>
</tr>
<tr class="even">
<td><strong>Normal Flow</strong></td>
<td><ol type="1">
<li><p>Navigate to backend Swagger Portal</p></li>
<li><p>Click on the “/api/Authentication/GetAuthToken” endpoint under the “Authentication” section</p></li>
<li><p>Click the “Try it out” button</p></li>
<li><p>Enter Username and Password</p></li>
<li><p>Click Execute</p></li>
<li><p>Copy token from Response Body</p></li>
</ol>
<blockquote>
<p><img src="src/media/image36.png" style="width:4.20833in;height:0.32054in" /></p>
</blockquote>
<ol start="7" type="1">
<li><p>At the top of the page, click the “Authorize” button <img src="src/media/image37.png" style="width:1.36458in;height:0.40851in" /></p></li>
<li><p>Paste Token from step 6 into the “Value” field</p></li>
<li><p>Click “Authorize” button</p></li>
<li><p>Click “Close” button</p></li>
</ol></td>
</tr>
<tr class="odd">
<td><strong>Expected Result</strong></td>
<td><strong>JWT token is automatically included as request header in api calls made from the Swagger Portal</strong></td>
</tr>
<tr class="even">
<td><strong>Actual Result</strong></td>
<td><strong>Pass</strong></td>
</tr>
</tbody>
</table>
