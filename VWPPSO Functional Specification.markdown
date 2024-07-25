**VWSA**

***PPSO for Special Markets***

***Functional Specification***

***Version 1.1.1***

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

**  
**

**Table of Contents**

[Confidentiality and Copyright 2](#_Toc484093250)

[1 ocument Information 5](#document-information)

[1.1 Change History 5](#change-history)

[1.2 Review Record 5](#review-record)

[1.3 Open Issues 5](#open-issues)

[2 Introduction 6](#introduction)

[3 Requirement Keys 7](#requirement-keys)

[3.1 Admin Login 8](#admin-login)

[3.1.1 Description 8](#description)

[3.1.2 Features 8](#features)

[3.2 User Fleet Login 8](#user-fleet-login)

[3.2.1 Description 8](#description-1)

[3.2.2 Features 9](#features-1)

[3.3 Admin Menu 9](#admin-menu)

[3.3.1 Description 9](#description-2)

[3.3.2 Features 9](#features-2)

[3.4 User Fleet Menu 9](#user-fleet-menu)

[3.4.1 Description 9](#description-3)

[3.4.2 Features 10](#features-3)

[3.5 Maintain Model Reference VIN Number
10](#maintain-model-reference-vin-number)

[3.5.1 Description 10](#description-4)

[3.5.2 Features 10](#features-4)

[3.6 Active Directory Authentication
11](#active-directory-authentication)

[3.6.1 Description 11](#description-5)

[3.6.2 Features 11](#features-5)

[3.7 Maintain Service Data for a Model
11](#maintain-service-data-for-a-model)

[3.7.1 Description 11](#description-6)

[3.7.2 Features 11](#features-6)

[3.8 Total Cost of Servicing (Mileage)
12](#total-cost-of-servicing-mileage)

[3.8.1 Description 12](#description-7)

[3.8.2 Features 12](#features-7)

[3.9 Total Cost of Servicing (Time) 12](#total-cost-of-servicing-time)

[3.9.1 Description 12](#description-8)

[3.9.2 Features 13](#features-8)

[3.10 Delete Service Data for Model 13](#delete-service-data-for-model)

[3.10.1 Description 13](#description-9)

[3.10.2 Features 13](#features-9)

[3.11 View Packages 14](#view-packages)

[3.11.1 Description 14](#description-10)

[3.11.2 Features 14](#features-10)

[3.12 Part Look Up 14](#part-look-up)

[3.12.1 Description 14](#description-11)

[3.12.2 Features 15](#features-11)

[3.13 Campaign Check 15](#campaign-check)

[3.13.1 Description 15](#description-12)

[3.13.2 Features 15](#features-12)

[3.14 Vehicle Service History 15](#vehicle-service-history)

[3.14.1 Description 15](#description-13)

[3.14.2 Features 16](#features-13)

[3.15 Crafter Service Intervals 16](#crafter-service-intervals)

[3.15.1 Description 16](#description-14)

[3.15.2 Features 16](#features-14)

[3.16 Fluid Mapping 17](#fluid-mapping)

[3.16.1 Description 17](#description-15)

[3.16.2 Features 17](#features-15)

[3.17 Usage Reports for Business 17](#usage-reports-for-business)

[3.17.1 Description 17](#description-16)

[3.17.2 Features 17](#features-16)

[3.18 Manual Data Maintenance 18](#manual-data-maintenance)

[3.18.1 Description 18](#description-17)

[3.18.2 Features 18](#features-17)

[3.19 Swagger Portal Authentication 18](#swagger-portal-authentication)

[3.19.1 Description 18](#description-18)

[3.19.2 Features 18](#features-18)

# Document Information

## Change History

| **Date**   | **Version** | **Changed Chapters**               | **Author**    |
| ---------- | ----------- | ---------------------------------- | ------------- |
| 2021/09/21 | 1.0.0       | Initial Document                   | Storm Chambel |
| 2021/10/01 | 1.0.1       | Stage 2 Implementation             | Storm Chambel |
| 2021/10/13 | 1.0.2       | Stage 3 Implementation             | Storm Chambel |
| 2022/02/16 | 1.0.3       | Stage 4 and Stage 5 Implementation | Storm Chambel |
| 2023/10/31 | 1.1.0       | CR001 Implementation               | Johan Stander |
| 2023/11/21 | 1.1.1       | CR001 Amendments                   | Johan Stander |

## Review Record

| **Date** | **Reviewed Version** | **Comments** | **Reviewer** |
| -------- | -------------------- | ------------ | ------------ |
|          |                      |              |              |
|          |                      |              |              |
|          |                      |              |              |

## Open Issues

| **Date** | **Description** | **Resolution** | **Responsible** |
| -------- | --------------- | -------------- | --------------- |
|          |                 |                |                 |
|          |                 |                |                 |
|          |                 |                |                 |

# Introduction

The PPSO system is an online system that simplifies the process of
retrieving vehicle service data that enables Special Market clients
(Rental, Leasing Fleet and Government) customers the ability to access
the parts system, labour operation codes and time units so that they can
develop their own parts baskets.

**Business rules**

  - The Admin role can maintain model referenced VIN

  - The Admin role can maintain service data for a model

  - The Admin role can delete service data for a referenced VIN

  - The Vendor role can review total cost of service based on time

  - The Vendor role can review total cost of service based on mileage

  - The Vendor role can review report of total cost of service based on
    mileage

  - The Vendor role can review report of total cost of service based on
    time

  - The Vendor role can view package information for a specified VIN

  - The Vendor role can look up part information for a specified part Id

  - The Vendor role can view vehicle service history for a specified VIN

**Functional Requirements**

  - A web application written is .NET(back-end), C\# (back-end) and
    Angular(front-end)

  - An admin user utility used to maintain service information

  - A user fleet user utility to report service information to user

  - Authentication via web page that accesses Active Directory

# Requirement Keys

| **Function**                        | **Requirement Key** | **Description**                                                                                                            |
| ----------------------------------- | ------------------- | -------------------------------------------------------------------------------------------------------------------------- |
| Admin Login                         | S4 REQ KEY 001      | Retrieves user login specifically for Admin user role functionality                                                        |
| User Fleet Login                    | S4 REQ KEY 002      | Retrieves user login specifically for Vendor user role functionality                                                       |
| Admin Menu                          | S4 REQ KEY 003      | Displays menu of forms only available for admin users.                                                                     |
| User Fleet Menu                     | S4 REQ KEY 004      | Displays menu of forms only available for fleet users.                                                                     |
| Maintain Model Reference VIN Number | S4 REQ KEY 005      | Allows admin users to add or maintain VIN numbers in the database.                                                         |
| Active Directory Authentication     | S4 REQ KEY 006      | Authenticates all user requests with Active Directory                                                                      |
| Maintain Service Data for a Model   | S4 REQ KEY 007      | Allows admin users to add or maintain service data for a model.                                                            |
| Total Cost of Servicing (Mileage)   | S4 REQ KEY 008      | Displays table of total cost of service information based on mileage                                                       |
| Total Cost of Servicing (Time)      | S4 REQ KEY 009      | Displays table of total cost of service information based on time                                                          |
| Delete Service Data for Model       | S4 REQ KEY 010      | Removes the service data for a specified model by using the VIN number                                                     |
| View Packages                       | S4 REQ KEY 011      | Displays table for selected packages                                                                                       |
| Part Look Up                        | S4 REQ KEY 012      | Displays the information of the provided part ID                                                                           |
| Campaign Check                      | S4 REQ KEY 013      | Displays whether there is an open campaign for the specified VIN                                                           |
| Vehicle Service History             | S4 REQ KEY 014      | Displays the service of a vehicle with the provided VIN                                                                    |
| Crafter Exclusion table             | S4 REQ KEY 015      | A SQL table that contains a list of Crafter model codes                                                                    |
| Fluid Mapping                       | S4 REQ KEY 016      | Mapping table for fluid part numbers that display Pseudo Codes instead of full part numbers                                |
| Usage reports for business          | S4 REQ KEY 017      | Frontend table to display existing audit logs database table, which records a history of user interaction with the system. |
| Manual Data Maintenance             | S4 REQ KEY 018      | Manual administration of service data.                                                                                     |
| Swagger Authentication              | S4 REQ KEY 019      | JWT token authorization in the backend’s Swagger portal.                                                                   |

## Admin Login

### Description 

Login as handled and retrieved when a user on the Admin AD group. This
will direct user to the admin navigation section.

### Features

| **Feature**       | **Requirement Key** | **Description**                                                         |
| ----------------- | ------------------- | ----------------------------------------------------------------------- |
| AD Authentication | S4 REQ KEY 001.1    | Login details are retrieved by page that accesses the Active Directory. |
| Error Message     | S4 REQ KEY 001.2    | An error pop-up is displayed if authentication fails                    |
| Redirect          | S4 REQ KEY 001.3    | If user is not authenticated user gets redirected to VW 360 page        |

## User Fleet Login

### Description 

Login as handled and retrieved when a user on the user fleet group. This
will direct user to the user fleet navigation section.

### Features

| **Feature**       | **Requirement Key** | **Description**                                                         |
| ----------------- | ------------------- | ----------------------------------------------------------------------- |
| AD Authentication | S4 REQ KEY 002.1    | Login details are retrieved by page that accesses the Active Directory. |
| Error Message     | S4 REQ KEY 002.2    | An error pop-up is displayed if authentication fails                    |
| Redirect          | S4 REQ KEY 002.3    | If user is not authenticated user gets redirected to the fleet portal   |

## Admin Menu

### Description 

Menu page as seen by an Admin user. This includes a menu for the admin
user to redirect users to the appropriate pages.

### Features

| **Feature**                                | **Requirement Key** | **Description**                                                 |
| ------------------------------------------ | ------------------- | --------------------------------------------------------------- |
| Maintain model reference VIN number button | S4 REQ KEY 003.1    | Redirects user to the maintain model reference VIN number form. |
| Maintain service data for model            | S4 REQ KEY 003.2    | Redirects user to the maintain service data for model form.     |
| Delete service data for model              | S4 REQ KEY 003.3    | Redirects user to the delete service data for model form.       |

## User Fleet Menu

### Description 

User navigation page as seen by a user fleet menu user. This includes a
menu for the user fleet user to redirect users to the appropriate pages.

### Features

| **Feature**                    | **Requirement Key** | **Description**                                                   |
| ------------------------------ | ------------------- | ----------------------------------------------------------------- |
| Total cost of servicing button | S4 REQ KEY 004.1    | Shows pop up with mileage and time option for the total cost      |
| Mileage pops up button         | S4 REQ KEY 004.2    | Redirects user to mileage version of total cost of servicing form |
| Time pop up button             | S4 REQ KEY 004.3    | Redirects user to time version of total cost of servicing form    |
| View packages button           | S4 REQ KEY 004.4    | Redirects user to the view packages component                     |
| Vehicle service history button | S4 REQ KEY 004.5    | Redirects user to the vehicle service history component           |
| Campaign Check button          | S4 REQ KEY 004.6    | Redirects user to the campaign check component                    |
| Part number Look Up            | S4 REQ KEY 004.7    | Redirects user to the part number look up component               |

## Maintain Model Reference VIN Number

### Description 

Admin user utility responsible for the creation and management of model
reference vin numbers.

### Features

| **Feature**            | **Requirement Key** | **Description**                                                    |
| ---------------------- | ------------------- | ------------------------------------------------------------------ |
| Select brand drop down | S4 REQ KEY 005.1    | Select desired brand from a drop-down list                         |
| Select model code      | S4 REQ KEY 005.2    | Only show and allow for selection of model codes related to brand. |
| Enter VIN text box     | S4 REQ KEY 005.3    | Enter a valid VIN into text box                                    |
| Save button            | S4 REQ KEY 005.4    | Save data into the database                                        |
| Return button          | S4 REQ KEY 005.5    | Redirect user back to admin user navigation                        |
| Delete button          | S4 REQ.KEY 005.6    | Delete a Reference VIN from a Model                                |

## Active Directory Authentication

### Description 

User login and user requests are authenticated using Active Directory.

### Features

| **Feature**                 | **Requirement Key** | **Description**                                                 |
| --------------------------- | ------------------- | --------------------------------------------------------------- |
| Successful authentication   | S4 REQ KEY 006.1    | Authentication details are valid and access to user is provided |
| Unsuccessful authentication | S4 REQ KEY 006.2    | Authentication failed en error is returned                      |

## Maintain Service Data for a Model

### Description 

Admin user utility responsible for the creation and management of
service data for a model.

### Features

| **Feature**             | **Requirement Key** | **Description**                                                                       |
| ----------------------- | ------------------- | ------------------------------------------------------------------------------------- |
| Select brand drop down  | S4 REQ KEY 007.1    | Select desired brand from a drop-down list                                            |
| Select model code       | S4 REQ KEY 007.2    | Only show and allow for selection of model codes related to brand on a drop-down list |
| Enter VIN text box      | S4 REQ KEY 007.3    | Enter a valid VIN into text box                                                       |
| Save button             | S4 REQ KEY 007.4    | Save data into the database                                                           |
| Return button           | S4 REQ KEY 007.5    | Redirect user back to admin user navigation                                           |
| Start mileage drop down | S4 REQ KEY 007.6    | Select appropriate start mileage from a drop-down list                                |
| End mileage drop down   | S4 REQ KEY 007.7    | Select appropriate end mileage from a drop-down list                                  |
| Process button          | S4 REQ KEY 007.8    | Processes data into appropriate databases                                             |

## Total Cost of Servicing (Mileage)

### Description 

User fleet utility responsible displaying the prices of parts, labour
and the total cost of service based on mileage.

### Features

| **Feature**                   | **Requirement Key** | **Description**                                                                       |
| ----------------------------- | ------------------- | ------------------------------------------------------------------------------------- |
| Select brand drop down        | S4 REQ KEY 008.1    | Select appropriate brand from a drop-down list                                        |
| Select model code             | S4 REQ KEY 008.2    | Only show and allow for selection of model codes related to brand on a drop-down list |
| Choose mileage drop down      | S4 REQ KEY 008.3    | Select appropriate mileage from a drop-down list                                      |
| Extract button                | S4 REQ KEY 008.4    | Extracts appropriate data from the database.                                          |
| Return button                 | S4 REQ KEY 008.5    | Redirect user back to user fleet user navigation                                      |
| Service work by mileage table | S4 REQ KEY 008.6    | Table that displays appropriate service work data based on selected options           |

## Total Cost of Servicing (Time)

### Description 

User fleet utility responsible displaying the prices of parts, labour
and the total cost of service based on time.

### Features

| **Feature**                | **Requirement Key** | **Description**                                                                       |
| -------------------------- | ------------------- | ------------------------------------------------------------------------------------- |
| Select brand drop down     | S4 REQ KEY 009.1    | Select appropriate brand from a drop-down list                                        |
| Select model code          | S4 REQ KEY 009.2    | Only show and allow for selection of model codes related to brand on a drop-down list |
| Choose time drop down      | S4 REQ KEY 009.3    | Select appropriate time from a drop-down list                                         |
| Extract button             | S4 REQ KEY 009.4    | Extracts appropriate data from the database.                                          |
| Return button              | S4 REQ KEY 009.5    | Redirect user back to user fleet user navigation                                      |
| Service work by time table | S4 REQ KEY 009.6    | Table that displays appropriate service work data based on selected options           |

## Delete Service Data for Model

### Description 

Admin utility responsible for removing service data for the model on the
database based on the VIN number.

### Features

| **Feature**            | **Requirement Key** | **Description**                                                                       |
| ---------------------- | ------------------- | ------------------------------------------------------------------------------------- |
| Select brand drop down | S4 REQ KEY 010.1    | Select desired brand from a drop-down list                                            |
| Select model code      | S4 REQ KEY 010.2    | Only show and allow for selection of model codes related to brand on a drop-down list |
| Enter VIN text box     | S4 REQ KEY 010.3    | Enter a valid VIN into text box                                                       |
| Delete button          | S4 REQ KEY 010.4    | Remove data from all relative tables in the database                                  |

## View Packages

### Description 

User fleet utility responsible for removing service data for the model
on the database based on the VIN number.

### Features

| **Feature**                           | **Requirement Key** | **Description**                                                                              |
| ------------------------------------- | ------------------- | -------------------------------------------------------------------------------------------- |
| Select brand drop down                | S4 REQ KEY 011.1    | Select desired brand from a drop-down list                                                   |
| Select model code                     | S4 REQ KEY 011.2    | Only show and allow for selection of model codes related to brand on a drop-down list        |
| Enter VIN text box                    | S4 REQ KEY 011.3    | Enter a valid VIN into text box                                                              |
| Load button                           | S4 REQ KEY 011.4    | Load package category data                                                                   |
| Select package category drop down     | S4 REQ KEY 011.5    | Select package category option from drop down once selected load package sub categories      |
| Select package sub category drop down | S4 REQ KEY 011.6    | Select package sub category option from drop down once selected display information in table |
| Packages table                        | S4 REQ KEY 011.7    | Displays data from selected package sub category                                             |

## Part Look Up

### Description 

User fleet utility responsible for retrieving part information in the
database based on the part number provided.

### Features

| **Feature**              | **Requirement Key** | **Description**                                                                                           |
| ------------------------ | ------------------- | --------------------------------------------------------------------------------------------------------- |
| Text box for part number | S4 REQ KEY 012.1    | Enter desired part number or super seeded part number. As well as displaying part number and description. |
| Price button             | S4 REQ KEY 012.2    | Loads part number information                                                                             |
| Price text box           | S4 REQ KEY 012.3    | Responsible for displaying the price of desired part                                                      |

## Campaign Check

### Description 

User fleet utility responsible for retrieving whether a vehicle has an
open campaign or not.

### Features

| **Feature**                | **Requirement Key** | **Description**                                           |
| -------------------------- | ------------------- | --------------------------------------------------------- |
| Text box for VIN           | S4 REQ KEY 013.1    | Enter related VIN that user wants campaign information on |
| Check button               | S4 REQ KEY 013.2    | Loads campaign information                                |
| Campaign information table | S4 REQ KEY 013.3    | States whether there is an open campaign or not           |

## Vehicle Service History

### Description 

User fleet utility responsible for retrieving a vehicles service history
based on VIN.

### Features

| **Feature**                   | **Requirement Key** | **Description**                                                  |
| ----------------------------- | ------------------- | ---------------------------------------------------------------- |
| Text box for VIN              | S4 REQ KEY 014.1    | Enter related VIN that user wants campaign information on        |
| Check button                  | S4 REQ KEY 014.2    | Loads service history                                            |
| Vehicle service history table | S4 REQ KEY 014.3    | Responsible for showing the service history of the vehicle.      |
| Extract Button                | S4 REQ KEY 014.4    | Extracts the information from the table into CSV or Excel format |

## Crafter Service Intervals

### Description

Crafter vehicles have a service interval of 20000km, as opposed to the
default 15000. The model codes and their interval are captured on the
Maintain Service Intervals page on the Admin portal.

### Features

| **Feature**                     | **Requirement Key** | **Description**                                                                                                   |
| ------------------------------- | ------------------- | ----------------------------------------------------------------------------------------------------------------- |
| Create Crafter Service Interval | S4 REQ KEY 015.1    | Capture of a crafter model code and service interval                                                              |
| Update Crafter Service Interval | S4 REQ KEY 015.2    | Update of Service Interval entry                                                                                  |
| Delete Crafter Service Interval | S4 REQ KEY 015.3    | Delete of Service Interval entry                                                                                  |
| View Crafter Service Intervals  | S4 REQ KEY 015.4    | View all existing Service Interval entries                                                                        |
| Applied service interval        | S4 REQ KEY 015.5    | Apply appropriate interval on Total Cost of Service and View Packages pages when a Crafter Model Code is selected |

## Fluid Mapping

### Description

Some part numbers are returned with Pseudo codes that do not conform to
the Part Number format used in other systems. These need to be captured
and overwritten with the assigned part number as captured by an Admin
user.

### Features

| **Feature**                          | **Requirement Key** | **Description**                                                               |
| ------------------------------------ | ------------------- | ----------------------------------------------------------------------------- |
| Create Fluid Mapping                 | S4 REQ KEY 016.1    | Capture of pseudo code and part number                                        |
| Update Fluid Mapping                 | S4 REQ KEY 016.2    | Update of Fluid Mapping entry                                                 |
| Delete Fluid Mapping                 | S4 REQ KEY 016.3    | Delete of Fluid Mapping entry                                                 |
| View Fluid Mappings                  | S4 REQ KEY 016.4    | View existing Fluid Mapping entries                                           |
| Replace Pseudo Codes for fluid parts | S4 REQ KEY 016.5    | Replace pseudo codes on the Total Cost of Servicing and View Packages screens |

## Usage Reports for Business

### Description

Usage Reports for the business where they will be able to monitor the
usage of the system, as logged by the Audit Log functionality.

### Features

| **Feature**        | **Requirement Key** | **Description**                                   |
| ------------------ | ------------------- | ------------------------------------------------- |
| View Usage Reports | S4 REQ KEY 017.1    | View the usage reports from the Audit Log feature |

## Manual Data Maintenance

### Description

Admin functionality to manually capture and manage service package data.

### Features

| **Feature**                  | **Requirement Key** | **Description**                            |
| ---------------------------- | ------------------- | ------------------------------------------ |
| Add parts to service package | S4 REQ KEY 018.1    | Adding of specific parts to a PPSO package |
| Delete Service Data          | S4 REQ KEY 018.2    | Delete service data for a PPSO package     |

## Swagger Portal Authentication

### Description

The backend makes use of Swagger to provide an interface for the API.
The swagger portal should require a user to authenticate before they are
allowed to make use of API endpoints.

### Features

| **Feature** | **Requirement Key** | **Description**                                                          |
| ----------- | ------------------- | ------------------------------------------------------------------------ |
| Get Token   | S4 REQ KEY 019.1    | Function to receive a JWT token after providing a username and password. |
