-- Create the medical_history database
CREATE DATABASE IF NOT EXISTS medical_history;

-- Switch to the medical_history database
USE medical_history;

-- Create the patientdemographics table
CREATE TABLE IF NOT EXISTS `patientdemographics` (
 `PatientID` int NOT NULL AUTO_INCREMENT,
 `HospitalMR#` varchar(50) DEFAULT NULL,
 `PtLastName` varchar(128) DEFAULT NULL,
 `PtPreviousLastName` varchar(128) DEFAULT NULL,
 `PtFirstName` varchar(128) DEFAULT NULL,
 `PtMiddleInitial` varchar(4) DEFAULT NULL,
 `Suffix` varchar(10) DEFAULT NULL,
 `HomeAddress` varchar(128) DEFAULT NULL,
 `HomeCity` varchar(128) DEFAULT NULL,
 `[HomeState/Province/Region]` varchar(50) DEFAULT NULL,
 `HomeZip` varchar(15) DEFAULT NULL,
 `Country` varchar(75) DEFAULT NULL,
 `Citizenship` varchar(75) DEFAULT NULL,
 `PtHomePhone` varchar(14) DEFAULT NULL,
 `EmergencyPhoneNumber` varchar(14) DEFAULT NULL,
 `EmailAddress` varchar(128) DEFAULT NULL,
 `SSN` varchar(12) DEFAULT NULL,
 `DOB` datetime DEFAULT NULL,
 `Gender` varchar(50) DEFAULT NULL,
 `EthnicAssociation` varchar(75) DEFAULT NULL,
 `Religion` varchar(75) DEFAULT NULL,
 `MaritalStatus` varchar(25) DEFAULT NULL,
 `EmploymentStatus` varchar(50) DEFAULT NULL,
 `DateofExpire` datetime DEFAULT NULL,
 `Referral` varchar(128) DEFAULT NULL,
 `CurrentPrimaryHCPId` varchar(128) DEFAULT NULL,
 `Comments` varchar(254) DEFAULT NULL,
 `DateEntered` datetime DEFAULT NULL,
 `NextOfKinID` varchar(128) DEFAULT NULL,
 `NextOfKinRelationshipToPatient` varchar(50) DEFAULT NULL,
 `deleted` tinyint(1) DEFAULT '0',
 PRIMARY KEY (`PatientID`),
 KEY `I_LastName` (`PtLastName`),
 KEY `I_HomePhone` (`PtHomePhone`)
);
-- Insert sample patient records into PatientDemographics table
INSERT INTO `patientdemographics` (
    `HospitalMR#`, `PtLastName`, `PtPreviousLastName`, `PtFirstName`, 
    `PtMiddleInitial`, `Suffix`, `HomeAddress`, `HomeCity`, 
    `HomeState/Province/Region`, `HomeZip`, `Country`, `Citizenship`, 
    `PtHomePhone`, `EmergencyPhoneNumber`, `EmailAddress`, `SSN`, 
    `DOB`, `Gender`, `EthnicAssociation`, `Religion`, `MaritalStatus`, 
    `EmploymentStatus`, `DateofExpire`, `Referral`, `CurrentPrimaryHCPId`, 
    `Comments`, `DateEntered`, `NextOfKinID`, `NextOfKinRelationshipToPatient`, `deleted`
) VALUES (
    'MR67890', 'Karim', '', 'Haider', 
    '', '', '456 Oak St', 'Townsville', 
    'Provinceville', '56789', 'Palestine', 'Citizen', 
    '555-123-4567', '555-987-6543', 'haider.karim@email.com', '987-65-4321', 
    '1985-07-15', 'Male', 'EthnicGroup2', 'Islam', 'Single', 
    'Employed', '2024-12-31', 'Friend Referral', 'PrimaryHCP567', 
    'No specific comments', '2023-11-29', 'KinID789', 'Friend', 0
),
(
    'MR54321', 'Gaffar', '', 'Rahman', 
    '', '', '789 Pine St', 'Villagetown', 
    'Regionville', '45678', 'Palestine', 'Citizen', 
    '111-222-3333', '999-888-7777', 'freepaliestine@yahoo.com', '876-54-3210', 
    '1992-03-25', 'Male', 'EthnicGroup3', 'Islam', 'Married', 
    'Unemployed', '2023-12-31', 'Internet Search', 'PrimaryHCP987', 
    'Patient is allergic to penicillin', '2023-11-29', 'KinID456', 'Spouse', 0
),
(
    'MR22222', 'Duha', '', 'Ad', 
    '', '', '202 Maple St', 'Citytown', 
    'Districtville', '56789', 'Palestine', 'Citizen', 
    '555-333-4444', '555-444-5555', 'ad.duha@email.com', '222-33-4444', 
    '1995-05-20', 'Female', 'EthnicGroup1', 'Islam', 'Married', 
    'Employed', '2023-12-31', 'Family Member Referral', 'PrimaryHCP222', 
    'Patient has a history of allergies', '2023-11-29', 'KinID222', 'Husband', 0
),

(
    'MR11111', 'Ekram', '', 'Zulzalal', 
    '', '', '101 Oakwood Ln', 'Villageville', 
    'Countyville', '12345', 'Palestine', 'Citizen', 
    '555-111-2222', '555-222-3333', 'zulzalal.ekram@email.com', '111-22-3333', 
    '1988-09-12', 'Male', 'EthnicGroup4', 'Islam', 'Single', 
    'Student', '2024-06-30', 'Physician Referral', 'PrimaryHCP111', 
    'No specific comments', '2023-11-29', 'KinID111', 'Sister', 0
),
(
    'MR22222', 'Duha', '', 'Ad', 
    '', '', '202 Maple St', 'Citytown', 
    'Districtville', '56789', 'Palestine', 'Citizen', 
    '555-333-4444', '555-444-5555', 'ad.duha@email.com', '222-33-4444', 
    '1995-05-20', 'Female', 'EthnicGroup1', 'Islam', 'Married', 
    'Employed', '2023-12-31', 'Family Member Referral', 'PrimaryHCP222', 
    'Patient has a history of allergies', '2023-11-29', 'KinID222', 'Husband', 0
), 
(
    'MR33333', 'Ali', '', 'Samira', 
    '', '', '303 Cedar Ave', 'Hamletville', 
    'Provinceville', '67890', 'Palestine', 'Citizen', 
    '555-555-6666', '555-666-7777', 'samira.ali@email.com', '333-44-5555', 
    '1977-12-08', 'Female', 'EthnicGroup2', 'Islam', 'Divorced', 
    'Unemployed', '2023-11-30', 'Self Referral', 'PrimaryHCP333', 
    'Patient prefers communication via email', '2023-11-29', 'KinID333', 'None', 0
),
(
    'MR44444', 'Aboud', '', 'Kareem', 
    '', '', '404 Elm St', 'Citytown', 
    'Districtville', '98765', 'Palestine', 'Citizen', 
    '555-777-8888', '555-888-9999', 'kareem.aboud@email.com', '444-55-6666', 
    '1982-06-15', 'Male', 'EthnicGroup3', 'Islam', 'Single', 
    'Student', '2024-05-31', 'Friend Referral', 'PrimaryHCP444', 
    'Patient has a known allergy to penicillin', '2023-11-29', 'KinID444', 'Friend', 0
),
(
    'MR55555', 'Hassan', '', 'Aisha', 
    '', '', '505 Pine Ln', 'Villagetown', 
    'Countyville', '23456', 'Palestine', 'Citizen', 
    '555-999-0000', '555-000-1111', 'aisha.hassan@email.com', '555-66-7777', 
    '1990-04-30', 'Female', 'EthnicGroup1', 'Islam', 'Married', 
    'Employed', '2023-12-31', 'Internet Search', 'PrimaryHCP555', 
    'No specific comments', '2023-11-29', 'KinID555', 'Spouse', 0
),
(
    'MR66666', 'Farid', '', 'Omar', 
    '', '', '606 Maple Ave', 'Townsville', 
    'Districtville', '34567', 'Palestine', 'Citizen', 
    '555-222-1111', '555-111-2222', 'omar.farid@email.com', '666-77-8888', 
    '1987-11-18', 'Male', 'EthnicGroup2', 'Islam', 'Married', 
    'Employed', '2024-09-30', 'Physician Referral', 'PrimaryHCP666', 
    'Patient is under medication for hypertension', '2023-11-29', 'KinID666', 'Brother', 0
),
(
    'MR77777', 'Ahmed', '', 'Fatima', 
    '', '', '707 Oakwood Ln', 'Hamletville', 
    'Provinceville', '45678', 'Palestine', 'Citizen', 
    '555-333-1111', '555-111-3333', 'fatima.ahmed@email.com', '777-88-9999', 
    '1993-08-22', 'Female', 'EthnicGroup3', 'Islam', 'Single', 
    'Unemployed', '2023-12-31', 'Family Member Referral', 'PrimaryHCP777', 
    'Patient is allergic to shellfish', '2023-11-29', 'KinID777', 'Sister', 0
),
(
    'MR88888', 'Karimi', '', 'Amir', 
    '', '', '808 Pine St', 'Citytown', 
    'Districtville', '23456', 'Palestine', 'Citizen', 
    '555-999-4444', '555-444-9999', 'amir.karimi@email.com', '888-99-0000', 
    '1980-02-10', 'Male', 'EthnicGroup4', 'Islam', 'Married', 
    'Employed', '2024-04-30', 'Friend Referral', 'PrimaryHCP888', 
    'No specific comments', '2023-11-29', 'KinID888', 'Friend', 0
),

(
    'MR99999', 'Hasan', '', 'Noor', 
    '', '', '909 Cedar Ave', 'Villagetown', 
    'Countyville', '34567', 'Palestine', 'Citizen', 
    '555-222-3333', '555-333-4444', 'noor.hasan@email.com', '999-00-1111', 
    '1997-07-05', 'Female', 'EthnicGroup1', 'Islam', 'Single', 
    'Student', '2024-08-31', 'Internet Search', 'PrimaryHCP999', 
    'Patient has no known medical conditions', '2023-11-29', 'KinID999', 'None', 0
),
(
    'MR10101', 'Ibrahim', '', 'Bilal', 
    '', '', '1010 Elm St', 'Townsville', 
    'Provinceville', '45678', 'Palestine', 'Citizen', 
    '555-333-1111', '555-111-3333', 'bilal.ibrahim@email.com', '101-11-2222', 
    '1984-01-15', 'Male', 'EthnicGroup2', 'Islam', 'Married', 
    'Employed', '2023-12-31', 'Physician Referral', 'PrimaryHCP101', 
    'Patient is under regular medication', '2023-11-29', 'KinID101', 'Brother', 0
);
-- Create the allergyhistory table
CREATE TABLE IF NOT EXISTS `allergyhistory` (
    `AllergyID` int(11) NOT NULL AUTO_INCREMENT,
    `PatientID` int(11) DEFAULT NULL,
    `Allergen` varchar(254) DEFAULT NULL,
    `AllergyStartDate` varchar(25) DEFAULT NULL,
    `AllergyEndDate` varchar(25) DEFAULT NULL,
    `AllergyDescription` varchar(254) DEFAULT NULL,
    `deleted` tinyint(1) DEFAULT '0',
    PRIMARY KEY (`AllergyID`)
);
-- Insert realistic data into allergyhistory table for each patient
INSERT INTO `allergyhistory` (
    `PatientID`, `Allergen`, `AllergyStartDate`, `AllergyEndDate`, `AllergyDescription`, `deleted`
) VALUES
(1, 'Pollen', '2010-01-01', 'N/A', 'Seasonal allergy to pollen', 0),
(2, 'Penicillin', '2015-05-10', '2016-05-10', 'Allergic reaction, discontinued medication', 0),
(3, 'Shellfish', '2012-03-15', 'N/A', 'Shellfish allergy, avoids seafood', 0),
(4, 'Pollen', 'N/A', 'N/A', 'No known allergies', 0),
(5, 'Dust mites', '2018-08-20', 'N/A', 'Slight allergy, manages with regular cleaning', 0),
(6, 'Penicillin', 'N/A', 'N/A', 'No known allergies', 0),
(7, 'Peanuts', '2014-02-01', 'N/A', 'Peanut allergy, carries an epinephrine injector', 0),
(8, 'Peanuts', 'N/A', 'N/A', 'No known allergies', 0),
(9, 'Gluten', 'N/A', 'N/A', 'Allergic reaction, discontinued medication', 0),
(10, 'Sugar', 'N/A', 'N/A', 'No known allergies', 0);
-- Create the generalmedicalhistory table
CREATE TABLE IF NOT EXISTS `generalmedicalhistory` (
    `GeneralMedicalHistoryID` int(11) NOT NULL AUTO_INCREMENT,
    `PatientID` int(11) DEFAULT NULL,
    `MaritalStatus` varchar(25) DEFAULT NULL,
    `Education` varchar(50) DEFAULT NULL,
    `BehavioralHistory` varchar(254) DEFAULT NULL,
    `Tobacco` varchar(50) DEFAULT NULL,
    `TobaccoQuantity` varchar(75) DEFAULT NULL,
    `TobaccoDuraton` varchar(75) DEFAULT NULL,
    `Alcohol` varchar(50) DEFAULT NULL,
    `AlcoholQuantity` varchar(75) DEFAULT NULL,
    `AlcoholDuration` varchar(75) DEFAULT NULL,
    `Drug` varchar(25) DEFAULT NULL,
    `DrugType` varchar(254) DEFAULT NULL,
    `DrugDuration` varchar(75) DEFAULT NULL,
    `Dietary` varchar(254) DEFAULT NULL,
    `BloodType` varchar(10) DEFAULT NULL,
    `Rh` varchar(10) DEFAULT NULL,
    `NumberOfChildren` int(11) DEFAULT NULL,
    `LMPStatus` varchar(128) DEFAULT NULL,
    `MensesMonthlyYes` tinyint(1) DEFAULT '0',
    `MensesMonthlyNo` tinyint(1) DEFAULT '0',
    `MensesFreq` varchar(50) DEFAULT NULL,
    `MedicalHistoryNotes` varchar(4000) DEFAULT NULL,
    `HxObtainedBy` varchar(50) DEFAULT NULL,
    `deleted` tinyint(1) DEFAULT '0',
    PRIMARY KEY (`GeneralMedicalHistoryID`),
    KEY `GeneralMedHxPatientIDIndex` (`PatientID`)
);
-- Insert realistic data into generalmedicalhistory table for each patient
INSERT INTO `generalmedicalhistory` (
    `PatientID`, `MaritalStatus`, `Education`, `BehavioralHistory`, 
    `Tobacco`, `TobaccoQuantity`, `TobaccoDuraton`, `Alcohol`, 
    `AlcoholQuantity`, `AlcoholDuration`, `Drug`, `DrugType`, 
    `DrugDuration`, `Dietary`, `BloodType`, `Rh`, `NumberOfChildren`, 
    `LMPStatus`, `MensesMonthlyYes`, `MensesMonthlyNo`, `MensesFreq`, 
    `MedicalHistoryNotes`, `HxObtainedBy`, `deleted`
) VALUES 
(1, 'Single', 'College Graduate', 'Non-smoker', 'No', 'N/A', 'N/A', 'No', 'N/A', 'N/A', 'No', 'N/A', 'N/A', 'Balanced diet', 'O+', 'Positive', 0, 'Irregular', 0, 1, 'Monthly', 'No known medical conditions', 'Self-reported', 0),

(2, 'Married', 'High School Graduate', 'Ex-smoker', 'No', 'N/A', 'N/A', 'Yes', '2-3 drinks per week', 'Social drinker', 'Yes', 'Prescription medication', 'Long-term', 'Balanced diet', 'A+', 'Positive', 2, 'Regular', 0, 1, 'Monthly', 'History of asthma', 'Physician-reported', 0),

(3, 'Divorced', 'Some College', 'Social smoker', 'Yes', 'One pack per day', '10 years', 'Yes', '2-3 drinks per week', 'Social drinker', 'Yes', 'Recreational drugs', 'Occasional', 'Vegetarian', 'AB-', 'Negative', 3, 'Regular', 0, 1, 'Monthly', 'Previous history of depression', 'Physician-reported', 0),

(4, 'Single', 'College Graduate', 'No significant behavioral history', 'No', 'N/A', 'N/A', 'Occasional', '1-2 drinks per week', 'Social drinker', 'No', 'N/A', 'N/A', 'Balanced diet', 'O-', 'Negative', 1, 'Regular', 0, 1, 'Monthly', 'No significant medical history', 'Self-reported', 0),

(5, 'Married', 'Some College', 'Non-smoker', 'No', 'N/A', 'N/A', 'Yes', '3-5 drinks per week', 'Regular drinker', 'Yes', 'Prescription medication', 'Long-term', 'Balanced diet with occasional treats', 'B+', 'Positive', 2, 'Irregular', 1, 0, 'Every 2-3 months', 'History of asthma', 'Physician-reported', 0),

(6, 'Divorced', 'Master\'s Degree', 'Non-smoker', 'Yes', 'Half a pack per day', '8 years', 'No', 'N/A', 'N/A', 'No', 'N/A', 'N/A', 'Vegetarian', 'A+', 'Positive', 0, 'Regular', 0, 1, 'Monthly', 'No known medical conditions', 'Self-reported', 0),

(7, 'Widowed', 'High School Graduate', 'Social smoker', 'Yes', 'One pack per day', '15 years', 'Yes', '2-3 drinks per week', 'Social drinker', 'Yes', 'Recreational drugs', 'Occasional', 'Balanced diet', 'AB+', 'Positive', 4, 'Irregular', 0, 1, 'Every 2-3 months', 'Previous history of heart disease', 'Physician-reported', 0),

(8, 'Married', 'Some College', 'Ex-smoker', 'No', 'N/A', 'N/A', 'Yes', '2-4 drinks per week', 'Regular drinker', 'No', 'N/A', 'N/A', 'Balanced diet', 'O+', 'Positive', 3, 'Postmenopausal', 0, 0, 'N/A', 'No known medical conditions', 'Self-reported', 0),

(9, 'Widowed', 'High School Graduate', 'Non-smoker', 'No', 'N/A', 'N/A', 'Yes', '2-4 drinks per week', 'Regular drinker', 'No', 'N/A', 'N/A', 'Balanced diet', 'O+', 'Positive', 2, 'Postmenopausal', 0, 0, 'N/A', 'No known medical conditions', 'Self-reported', 0),

(10, 'Married', 'Some College', 'Non-smoker', 'No', 'N/A', 'N/A', 'Yes', '2-4 drinks per week', 'Regular drinker', 'No', 'N/A', 'N/A', 'Balanced diet', 'A+', 'Positive', 3, 'Irregular', 0, 1, 'Monthly', 'No known medical conditions', 'Self-reported', 0);

-- Create the familyhistory table
CREATE TABLE IF NOT EXISTS `familyhistory` (
    `FamilyID` int(11) NOT NULL AUTO_INCREMENT,
    `PatientID` int(11) DEFAULT NULL,
    `Name` varchar(50) DEFAULT NULL,
    `Relation` varchar(50) DEFAULT NULL,
    `Alive` tinyint(1) DEFAULT '0',
    `Lives with patient` tinyint(1) DEFAULT '0',
    `MajorDisorder` varchar(254) DEFAULT NULL,
    `SpecificTypeDisorder` varchar(254) DEFAULT NULL,
    `deleted` tinyint(1) DEFAULT '0',
    PRIMARY KEY (`FamilyID`),
    KEY `I_PatientID` (`PatientID`)
);
-- Insert family history data for each patient with realistic Muslim names
INSERT INTO `familyhistory` (`PatientID`, `Name`, `Relation`, `Alive`, `Lives with patient`, `MajorDisorder`, `SpecificTypeDisorder`, `deleted`) VALUES
(1, 'Abdul Rahman', 'Father', 0, 0, 'Heart Disease', 'Coronary Artery Disease', 0),
(1, 'Amina Karim', 'Mother', 1, 1, 'Hypertension', 'N/A', 0),
(1, 'Ali Karim', 'Brother', 1, 0, 'Diabetes', 'Type 2 Diabetes', 0),

(2, 'Muhammad Gaffar', 'Father', 0, 0, 'Cancer', 'Lung Cancer', 0),
(2, 'Fatima Rahman', 'Mother', 1, 1, 'Hypertension', 'N/A', 0),
(2, 'Aisha Rahman', 'Sister', 1, 0, 'Asthma', 'N/A', 0),

(3, 'Ahmed Duha', 'Father', 1, 0, 'Diabetes', 'Type 1 Diabetes', 0),
(3, 'Layla Duha', 'Mother', 0, 0, 'Cancer', 'Breast Cancer', 0),

(4, 'Ibrahim Ekram', 'Father', 1, 0, 'Hypertension', 'N/A', 0),
(4, 'Sofia Ekram', 'Mother', 1, 0, 'Asthma', 'N/A', 0),
(4, 'Amina Ekram', 'Sister', 1, 0, 'Allergies', 'Pollen Allergy', 0),

(5, 'Yusuf Ad', 'Father', 0, 0, 'Heart Disease', 'Coronary Artery Disease', 0),
(5, 'Khadija Ad', 'Mother', 0, 0, 'Hypertension', 'N/A', 0),

(6, 'Amina Ali', 'Mother', 1, 0, 'Cancer', 'Breast Cancer', 0),

(7, 'Hassan Aboud', 'Father', 1, 0, 'Heart Disease', 'Coronary Artery Disease', 0),
(7, 'Sara Aboud', 'Mother', 1, 0, 'Hypertension', 'N/A', 0),

(8, 'Sofia Hassan', 'Mother', 0, 0, 'Diabetes', 'Type 2 Diabetes', 0),

(9, 'Ahmed Farid', 'Father', 1, 0, 'Hypertension', 'N/A', 0),

(10, 'Ali Omar', 'Father', 1, 0, 'Asthma', 'N/A', 0),
(10, 'Layla Omar', 'Mother', 1, 0, 'Heart Disease', 'Coronary Artery Disease', 0),
(10, 'Yusuf Omar', 'Brother', 1, 0, 'Diabetes', 'Type 2 Diabetes', 0),

(11, 'Fatima Ali', 'Mother', 1, 0, 'Hypertension', 'N/A', 0),

(12, 'Muhammad Karimi', 'Father', 0, 0, 'Heart Disease', 'Coronary Artery Disease', 0),

(13, 'Aisha Hasan', 'Mother', 0, 0, 'Cancer', 'Breast Cancer', 0);
-- Create the patientmedications table
CREATE TABLE IF NOT EXISTS `patientmedications` (
    `MedicationID` int(11) NOT NULL AUTO_INCREMENT,
    `PatientID` int(11) DEFAULT NULL,
    `Medication` varchar(254) DEFAULT NULL,
    `MedicationAmt` varchar(25) DEFAULT NULL,
    `MedicationUnit` varchar(25) DEFAULT NULL,
    `Instructions` varchar(1024) DEFAULT NULL,
    `MedicationStartDate` varchar(25) DEFAULT NULL,
    `MedicationEndDate` varchar(25) DEFAULT NULL,
    `PrescriptionHCP` varchar(75) DEFAULT NULL,
    `deleted` tinyint(1) DEFAULT '0',
    PRIMARY KEY (`MedicationID`),
    KEY `I_PatientID` (`PatientID`)
);
-- Insert sample patient medications into the patientmedications table
INSERT INTO `patientmedications` (
    `PatientID`, `Medication`, `MedicationAmt`, `MedicationUnit`, `Instructions`, 
    `MedicationStartDate`, `MedicationEndDate`, `PrescriptionHCP`, `deleted`
) VALUES
(1, 'Lisinopril', '10', 'mg', 'Take 1 tablet daily in the morning', '2022-01-15', '2023-01-15', 'PrimaryHCP567', 0),
(2, 'Metformin', '500', 'mg', 'Take 1 tablet with breakfast and 1 tablet with dinner', '2022-02-10', '2022-07-10', 'PrimaryHCP987', 0),
(3, 'Albuterol Inhaler', 'N/A', 'N/A', 'Use as needed for asthma symptoms', '2022-03-20', NULL, 'PrimaryHCP222', 0),
(4, 'None', 'N/A', 'N/A', 'No current medications', NULL, NULL, NULL, 0),
(5, 'Fluticasone Nasal Spray', '50', 'mcg', 'Use 1 spray in each nostril once daily', '2022-04-05', '2022-10-05', 'PrimaryHCP444', 0),
(6, 'None', 'N/A', 'N/A', 'No current medications', NULL, NULL, NULL, 0),
(7, 'Epinephrine Injector', 'N/A', 'N/A', 'Use in case of severe allergic reaction to peanuts', '2022-05-10', NULL, 'PrimaryHCP333', 0),
(8, 'None', 'N/A', 'N/A', 'No current medications', NULL, NULL, NULL, 0),
(9, 'Insulin', '20', 'units', 'Take as directed for diabetes', '2022-06-01', '2023-06-01', 'PrimaryHCP101', 0),
(10, 'None', 'N/A', 'N/A', 'No current medications', NULL, NULL, NULL, 0);


