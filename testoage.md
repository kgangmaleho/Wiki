---
title: VWPPSO Functional Specification
description: 
published: true
date: 2024-07-29T08:02:52.753Z
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

[3.5 Maintain Model Reference VIN Number 10](#maintain-model-reference-vin-number)

[3.5.1 Description 10](#description-4)

[3.5.2 Features 10](#features-4)

[3.6 Active Directory Authentication 11](#active-directory-authentication)

[3.6.1 Description 11](#description-5)

[3.6.2 Features 11](#features-5)

[3.7 Maintain Service Data for a Model 11](#maintain-service-data-for-a-model)

[3.7.1 Description 11](#description-6)

[3.7.2 Features 11](#features-6)

[3.8 Total Cost of Servicing (Mileage) 12](#total-cost-of-servicing-mileage)

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

