---
title: VWPPSO Functional Specification
description: 
published: true
date: 2024-07-29T08:05:08.226Z
tags: 
editor: markdown
dateCreated: 2024-07-29T07:39:24.662Z
---

**VWSA**

***PPSO for Special Markets***

***Functional Specification***

***Version 1.1.1***

<span id="_Toc484093250" class="anchor"></span>

Confidentiality and Copyright

Proprietary, confidential data. All rights reserved.

Distribution and/or reproduction of these documents or any of their parts, their utilisation or communication of their contents to third parties is not allowed, unless formally conceded. Contravention will cause damages.

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

The PPSO system is an online system that simplifies the process of retrieving vehicle service data that enables Special Market clients (Rental, Leasing Fleet and Government) customers the ability to access the parts system, labour operation codes and time units so that they can develop their own parts baskets.

**Business rules**

  - The Admin role can maintain model referenced VIN

  - The Admin role can maintain service data for a model

  - The Admin role can delete service data for a referenced VIN

  - The Vendor role can review total cost of service based on time

  - The Vendor role can review total cost of service based on mileage

  - The Vendor role can review report of total cost of service based on mileage

  - The Vendor role can review report of total cost of service based on time

  - The Vendor role can view package information for a specified VIN

  - The Vendor role can look up part information for a specified part Id

  - The Vendor role can view vehicle service history for a specified VIN

**Functional Requirements**

  - A web application written is .NET(back-end), C\# (back-end) and Angular(front-end)

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

Login as handled and retrieved when a user on the Admin AD group. This will direct user to the admin navigation section.

### Features

| **Feature**       | **Requirement Key** | **Description**                                                         |
| ----------------- | ------------------- | ----------------------------------------------------------------------- |
| AD Authentication | S4 REQ KEY 001.1    | Login details are retrieved by page that accesses the Active Directory. |
| Error Message     | S4 REQ KEY 001.2    | An error pop-up is displayed if authentication fails                    |
| Redirect          | S4 REQ KEY 001.3    | If user is not authenticated user gets redirected to VW 360 page        |

