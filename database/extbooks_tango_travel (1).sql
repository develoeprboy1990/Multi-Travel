-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 25, 2023 at 05:16 AM
-- Server version: 8.0.27
-- PHP Version: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `extbooks_tango_travel`
--

-- --------------------------------------------------------

--
-- Table structure for table `airline`
--

CREATE TABLE `airline` (
  `AirLineID` int NOT NULL,
  `AirLineName` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `airline`
--

INSERT INTO `airline` (`AirLineID`, `AirLineName`) VALUES
(1, 'AKBAR TRAVEL'),
(2, 'AIR BLUE'),
(3, 'AL DIYAFA');

-- --------------------------------------------------------

--
-- Table structure for table `chartofaccount`
--

CREATE TABLE `chartofaccount` (
  `ChartOfAccountID` int NOT NULL,
  `CODE` varchar(15) DEFAULT NULL,
  `ChartOfAccountName` varchar(75) DEFAULT NULL,
  `OpenDebit` int DEFAULT NULL,
  `OpenCredit` int DEFAULT NULL,
  `L1` int DEFAULT NULL,
  `L2` int DEFAULT NULL,
  `L3` int DEFAULT NULL,
  `Category` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chartofaccount`
--

INSERT INTO `chartofaccount` (`ChartOfAccountID`, `CODE`, `ChartOfAccountName`, `OpenDebit`, `OpenCredit`, `L1`, `L2`, `L3`, `Category`) VALUES
(100000, 'A', 'ASSETS', NULL, NULL, 100000, 100000, 100000, NULL),
(110000, 'A', 'CURRENT ASSETS', NULL, NULL, 100000, 110000, 110000, NULL),
(110100, 'A', 'CASH Account', NULL, NULL, 100000, 110000, 110100, NULL),
(110101, 'A', 'CASH IN HAND', NULL, NULL, 100000, 110000, 110100, 'CASH'),
(110200, 'A', 'BANK DEPOSITS', NULL, NULL, 100000, 110000, 110200, NULL),
(110201, 'A', 'DUBAI ISLAMAIC BANK', NULL, NULL, 100000, 110000, 110200, 'BANK'),
(110202, 'A', 'BANK 2', NULL, NULL, 100000, 110000, 110200, NULL),
(110203, 'A', 'BANK 3', NULL, NULL, 100000, 110000, 110200, NULL),
(110204, 'A', 'BANK 4', NULL, NULL, 100000, 110000, 110200, NULL),
(110250, 'A', 'Credit Card ACCOUNT.', NULL, NULL, 100000, 110000, 110200, 'CARD'),
(110300, 'A', 'JAYLIN PAY.', NULL, NULL, 100000, 110000, 110200, NULL),
(110400, 'A', 'A/C RECEIVABLE.', NULL, NULL, 100000, 110000, 110400, 'AR'),
(110401, 'A', 'PARTY A/C.', NULL, NULL, 100000, 110000, 110400, NULL),
(110402, 'A', 'OTHER RECEIVABLES', NULL, NULL, 100000, 110000, 110400, NULL),
(110420, 'A', 'STAFF ADVANCES.', NULL, NULL, 100000, 110000, 110400, NULL),
(110430, 'A', 'OTHER ADVANCES', NULL, NULL, 100000, 110000, 110400, NULL),
(110490, 'A', 'BAD DEBTS', NULL, NULL, 100000, 110000, 110400, NULL),
(110500, 'A', 'INVENTORY', NULL, NULL, 100000, 110000, 110500, NULL),
(110501, 'A', 'STOCK IN HAND', NULL, NULL, 100000, 110000, 110500, NULL),
(110600, 'A', 'MISC. ADJUSTMENTS', NULL, NULL, 100000, 110000, 110600, NULL),
(120000, 'A', 'FIXED ASSETS', NULL, NULL, 100000, 120000, 120000, NULL),
(120100, 'A', 'FIXED ASSETS', NULL, NULL, 100000, 120000, 120100, NULL),
(120125, 'A', 'VEHICLES', NULL, NULL, 100000, 120000, 120100, NULL),
(120127, 'A', 'PREMISES(SHOP)', NULL, NULL, 100000, 120000, 120100, NULL),
(130000, 'A', 'OTHER ASSETS', NULL, NULL, 100000, 130000, 130000, NULL),
(130100, 'A', 'PREPAID EXPENSES', NULL, NULL, 100000, 130000, 130100, NULL),
(130200, 'A', 'LONG TERM INVESTMENTS', NULL, NULL, 100000, 130000, 130200, NULL),
(140000, 'A', 'DEFERRED ASSETS', NULL, NULL, 100000, 140000, 140000, NULL),
(140100, 'A', 'DEFERRED ASSETS', NULL, NULL, 100000, 110000, 140100, NULL),
(140200, 'A', 'DEPOSITS', NULL, NULL, 100000, 140000, 140200, NULL),
(140300, 'A', 'LEASEHOLD IMPROV.NET', NULL, NULL, 100000, 140000, 140300, NULL),
(200000, 'L', 'LIABILITIES', NULL, NULL, 200000, 200000, 200000, NULL),
(210000, 'L', 'ACCOUNTS PAYABLE', NULL, NULL, 200000, 210000, 210000, NULL),
(210100, 'L', 'A/C PAYABLE', NULL, NULL, 200000, 210000, 210100, 'AP'),
(210101, 'L', 'ADVANCE PAYMENT', NULL, NULL, 200000, 210000, 210100, NULL),
(210102, 'L', 'OTHER PAYABLES', NULL, NULL, 200000, 210000, 210100, NULL),
(210103, 'L', 'BALANCE ADJUSTMENT', NULL, NULL, 200000, 210000, 210100, NULL),
(210300, 'L', 'TAX PAYABLES', NULL, NULL, 200000, 210000, 210300, NULL),
(210301, 'L', 'W/H TAX Deductions', NULL, NULL, 200000, 210000, 210300, NULL),
(210302, 'L', 'MARKETING COMMISSION PAYABLE.', NULL, NULL, 200000, 210000, 210300, NULL),
(210303, 'L', 'TAKAFAL PAYABLE.', NULL, NULL, 200000, 210000, 210300, NULL),
(220000, 'L', 'SECURITIES', NULL, NULL, 200000, 220000, 220000, NULL),
(220100, 'L', 'SECURITIES', NULL, NULL, 200000, 220000, 220100, NULL),
(300000, 'C', 'STOCKHOLDERS EQUITY', NULL, NULL, 300000, 300000, 300000, NULL),
(310000, 'C', 'STOCKHOLDERS EQUITY', NULL, NULL, 300000, 310000, 310000, NULL),
(310100, 'C', 'CAPITAL STOCK.', NULL, NULL, 300000, 310000, 310100, NULL),
(310101, 'C', 'CAPITAL A/C.', NULL, NULL, 300000, 310000, 310100, NULL),
(310102, 'C', 'PROFIT AND LOSS A/C.', NULL, NULL, 300000, 310000, 310100, NULL),
(310103, 'C', 'CURRENT PERIOD PROF/LOSS.', NULL, NULL, 300000, 310000, 310100, NULL),
(310104, 'C', 'MUHAMMAD ASIM JAN', NULL, NULL, 300000, 310000, 310100, NULL),
(310105, 'C', 'MUHAMMAD FAISAL', NULL, NULL, 300000, 310000, 310100, NULL),
(320000, 'C', 'CAPITAL WITHDRAWALS', NULL, NULL, 300000, 320000, 320000, NULL),
(320100, 'C', 'CAPITAL WITHDRAWALS', NULL, NULL, 300000, 320000, 320100, NULL),
(400000, 'R', 'REVENUES', NULL, NULL, 400000, 400000, 400000, NULL),
(410000, 'R', 'SALES', NULL, NULL, 400000, 410000, 410000, NULL),
(410100, 'R', 'SALES', NULL, NULL, 400000, 410000, 410100, 'SALE'),
(410101, 'R', 'COMMISSION', NULL, NULL, 400000, 410000, 410100, NULL),
(410150, 'R', 'SALE OF TICKET', NULL, NULL, 400000, 410000, 410100, NULL),
(410151, 'R', 'INCOME FROM REPAIR', NULL, NULL, 400000, 410000, 410100, NULL),
(410152, 'R', 'DISCOUNT RECEIVED', NULL, NULL, 400000, 410000, 410100, NULL),
(410155, 'R', 'SALES DISCOUNTS', NULL, NULL, 400000, 410000, 410100, NULL),
(410172, 'R', 'FREIGHT CHARGES', NULL, NULL, 400000, 410000, 410100, NULL),
(410173, 'R', 'INCOME SALE COMMISSION.', NULL, NULL, 400000, 410000, 410100, NULL),
(410175, 'R', 'SALE RETURNS.', NULL, NULL, 400000, 410000, 410100, NULL),
(410180, 'R', 'SALE RETURN DISCOUNT.', NULL, NULL, 400000, 410000, 410100, NULL),
(410185, 'R', 'SALE RETURN FREIGHT', NULL, NULL, 400000, 410000, 410100, NULL),
(410200, 'R', 'OTHER INCOME', NULL, NULL, 400000, 410000, 410200, NULL),
(410201, 'R', 'MISC. INCOME', NULL, NULL, 400000, 410000, 410200, NULL),
(410205, 'R', 'OTHER SALES.', NULL, NULL, 400000, 410000, 410200, NULL),
(420000, 'R', 'OTHER REVENUES', NULL, NULL, 400000, 420000, 420000, NULL),
(420100, 'R', 'OTHER INCOME', NULL, NULL, 400000, 420000, 420100, NULL),
(420101, 'R', 'OTHER INCOME 2', NULL, NULL, 400000, 420000, 420100, NULL),
(420104, 'R', 'PENDING/TARGET INCOME', NULL, NULL, 400000, 420000, 420100, NULL),
(420105, 'R', 'SERVICE CHARGES', NULL, NULL, 400000, 420000, 420100, NULL),
(420200, 'R', 'OTHER INCOME', NULL, NULL, 400000, 420000, 420200, NULL),
(500000, 'E', 'TOTAL EXPENSES', NULL, NULL, 500000, 500000, 500000, NULL),
(510000, 'E', 'COST OF GOODS SOLD.', NULL, NULL, 500000, 510000, 510000, NULL),
(510100, 'E', 'MATERIAL INVENTORY', NULL, NULL, 500000, 510000, 510100, NULL),
(510101, 'E', 'OPENING STOCK.', NULL, NULL, 500000, 510000, 510100, NULL),
(510102, 'E', 'PURCHASES', NULL, NULL, 500000, 510000, 510100, NULL),
(510103, 'E', 'PURCHASE OF TICKET', NULL, NULL, 500000, 510000, 510100, NULL),
(510104, 'E', 'DISCOUNT ALLOWED', NULL, NULL, 500000, 510000, 510100, NULL),
(510105, 'E', 'PURCHASE DISCOUNTS', NULL, NULL, 500000, 510000, 510100, NULL),
(510107, 'E', 'PURCHASE LOADING', NULL, NULL, 500000, 510000, 510100, NULL),
(510109, 'E', 'PURCHASE UNLOADING', NULL, NULL, 500000, 510000, 510100, NULL),
(510110, 'E', 'PURCHASE RETURN.', NULL, NULL, 500000, 510000, 510100, NULL),
(510117, 'E', 'ZAKAT ACCOUNT.', NULL, NULL, 500000, 510000, 510100, NULL),
(510120, 'E', 'PURCHASES MISC. ADJ.', NULL, NULL, 500000, 510000, 510100, NULL),
(510122, 'E', 'PURCHASE BENDING', NULL, NULL, 500000, 510000, 510100, NULL),
(510140, 'E', 'ADNAN PAY.', NULL, NULL, 500000, 510000, 510100, NULL),
(510145, 'E', 'STOCK EXPENSES', NULL, NULL, 500000, 510000, 510100, NULL),
(510200, 'E', 'PACKING MATERIAL EXPENS.', NULL, NULL, 500000, 510000, 510200, NULL),
(510300, 'E', 'POWER:-', NULL, NULL, 500000, 510000, 510300, NULL),
(510400, 'E', 'MARKETING EXPENSES', NULL, NULL, 500000, 510000, 510400, NULL),
(510441, 'E', 'MARKETING SALARIES', NULL, NULL, 500000, 510000, 510400, NULL),
(510451, 'E', 'MARKETING PHONE/MOB EXP.', NULL, NULL, 500000, 510000, 510400, NULL),
(510461, 'E', 'ENTERTAINMENT', NULL, NULL, 500000, 510000, 510400, NULL),
(520000, 'E', 'GEN & ADMIN EXPENSES', NULL, NULL, 500000, 520000, 520000, NULL),
(520100, 'E', ' PAYROLL EXPENSES', NULL, NULL, 500000, 520000, 520100, NULL),
(520200, 'E', 'MAINTENANCE', NULL, NULL, 500000, 520000, 520200, NULL),
(530000, 'E', 'ORGANISATION EXPENSE.', NULL, NULL, 500000, 530000, 530000, NULL),
(530100, 'E', 'PAYROLL EXPENSES', NULL, NULL, 500000, 530000, 530100, NULL),
(530106, 'E', 'JAYLINE SALARY', NULL, NULL, 500000, 530000, 530100, NULL),
(530107, 'E', 'GM PAY:-', NULL, NULL, 500000, 530000, 530100, NULL),
(530108, 'E', 'YASEEN SALARY', NULL, NULL, 500000, 530000, 530100, NULL),
(530109, 'E', 'BABAR SALARY', NULL, NULL, 500000, 530000, 530100, NULL),
(530200, 'E', 'ASSETS INSURANCE', NULL, NULL, 500000, 530000, 530200, NULL),
(540000, 'E', 'REPAIR & MAINTENANCE', NULL, NULL, 500000, 540000, 540000, NULL),
(540100, 'E', 'REPAIR & MAINTENANCE', NULL, NULL, 500000, 540000, 540100, NULL),
(540110, 'E', 'R/M VEHICLE.', NULL, NULL, 500000, 540000, 540100, NULL),
(540111, 'E', 'R/M FURNITURE & FIXTURE', NULL, NULL, 500000, 540000, 540100, NULL),
(540112, 'E', 'R/M EQUIPMENT / COMPUTER', NULL, NULL, 500000, 540000, 540100, NULL),
(540130, 'E', 'GIFT ACCOUNT.', NULL, NULL, 500000, 540000, 540100, NULL),
(550000, 'E', 'OFFICE EXPENSES', NULL, NULL, 500000, 550000, 550000, NULL),
(550100, 'E', 'OFFICE EXPENSES', NULL, NULL, 500000, 550000, 550100, NULL),
(550110, 'E', 'PRINTING & STATIONARY', NULL, NULL, 500000, 550000, 550100, NULL),
(550114, 'E', 'VEHICLE EXP.', NULL, NULL, 500000, 550000, 550100, NULL),
(550115, 'E', 'LICENCE EXPENSE.', NULL, NULL, 500000, 550000, 550100, NULL),
(550116, 'E', 'TELEPHONE BILLS', NULL, NULL, 500000, 550000, 550100, NULL),
(550120, 'E', 'WATER BILLS', NULL, NULL, 500000, 550000, 550100, NULL),
(550121, 'E', 'ELECTRIC BILL.', NULL, NULL, 500000, 550000, 550100, NULL),
(550123, 'E', 'HOME EXPENSES', NULL, NULL, 500000, 550000, 550100, NULL),
(550124, 'E', 'ROOM RENT.', NULL, NULL, 500000, 550000, 550100, NULL),
(550125, 'E', 'TRAVELLING EXP.', NULL, NULL, 500000, 550000, 550100, NULL),
(550126, 'E', 'TEA & FOOD EXPENSES', NULL, NULL, 500000, 550000, 550100, NULL),
(550130, 'E', 'POL VEHICLE.', NULL, NULL, 500000, 550000, 550100, NULL),
(550132, 'E', 'LEGAL & PROFESSIONAL', NULL, NULL, 500000, 550000, 550100, NULL),
(550134, 'E', 'MISC. EXPENSES', NULL, NULL, 500000, 550000, 550100, NULL),
(550136, 'E', 'CHARITY & DONATIONS', NULL, NULL, 500000, 550000, 550100, NULL),
(550138, 'E', 'NEWS PAPERS', NULL, NULL, 500000, 550000, 550100, NULL),
(550140, 'E', 'MEMBERSHIP FEE', NULL, NULL, 500000, 550000, 550100, NULL),
(560000, 'E', 'FINANCIAL EXPENSES', NULL, NULL, 500000, 560000, 560000, NULL),
(560100, 'E', 'FINANCIAL EXPENSES', NULL, NULL, 500000, 560000, 560100, NULL),
(560110, 'E', 'BANK CHARGES', NULL, NULL, 500000, 560000, 560100, NULL),
(560111, 'E', 'FEE CHARGED', NULL, NULL, 500000, 560000, 560100, NULL),
(570000, 'E', 'DEPRICIATION', NULL, NULL, 500000, 570000, 570000, NULL),
(570100, 'E', 'DEPRICIATION', NULL, NULL, 500000, 570000, 570100, NULL),
(580000, 'E', 'TAXES:-', NULL, NULL, 500000, 580000, 580000, NULL),
(580100, 'E', 'TAXES:-', NULL, NULL, 500000, 580000, 580100, NULL),
(580120, 'E', 'TAX PAYABLE', NULL, NULL, 500000, 580000, 580120, NULL),
(580130, 'E', 'SALES TAX.', NULL, NULL, 500000, 580000, 580100, NULL),
(580135, 'E', 'INCOME TAX.', NULL, NULL, 500000, 580000, 580100, NULL),
(580140, 'E', 'PROFESSIONAL TAX (EXCISE)', NULL, NULL, 500000, 580000, 580100, NULL),
(580145, 'E', 'TOLL TAX.', NULL, NULL, 500000, 580000, 580100, NULL),
(590000, 'E', 'OTHER EXPENSES', NULL, NULL, 500000, 590000, 590000, NULL),
(590100, 'E', 'OTHER EXPENSES', NULL, NULL, 500000, 590000, 590100, NULL),
(590101, 'E', 'OTHER EXPENSES', NULL, NULL, 500000, 590000, 590100, NULL),
(590104, 'E', 'OFFICE EXPENCE.', NULL, NULL, 500000, 590000, 590100, NULL),
(590105, 'E', 'OFFICE RENT.', NULL, NULL, 500000, 590000, 590100, NULL),
(590106, 'E', 'COMPUTER EXPENSES', NULL, NULL, 500000, 590000, 590100, NULL),
(590107, 'E', 'BAD DEBTS ', NULL, NULL, 500000, 590000, 590100, NULL),
(590108, 'E', 'CASH SHORT /EXCESS', NULL, NULL, 500000, 590000, 590100, NULL),
(590109, 'E', 'PREVIOUS PERIOD P&L.', NULL, NULL, 500000, 590000, 590100, NULL),
(600000, 'S', 'SUSPENSE', NULL, NULL, 600000, 600000, 600000, NULL),
(610000, 'S', 'SUSPENSE', NULL, NULL, 600000, 610000, 610000, NULL),
(610100, 'S', 'SUSPENSE', NULL, NULL, 600000, 610000, 610100, NULL),
(610101, 'S', 'SUSPENSE', NULL, NULL, 600000, 610000, 610100, NULL),
(610102, 'S', 'CLEARING ACCOUNT.', NULL, NULL, 600000, 610000, 610100, NULL),
(610103, 'S', 'CHEQUE ACCOUNT.', NULL, NULL, 600000, 610000, 610100, NULL),
(610104, 'S', 'EXCESS & SHORT ACCOUNT.', NULL, NULL, 600000, 610000, 610100, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `CompanyID` int NOT NULL,
  `Name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `Name2` varchar(255) DEFAULT NULL,
  `TRN` varchar(150) DEFAULT NULL COMMENT 'tax registration no',
  `Currency` varchar(3) DEFAULT NULL,
  `Mobile` varchar(75) DEFAULT NULL,
  `Contact` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Website` varchar(255) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Logo` varchar(255) DEFAULT NULL,
  `BackgroundLogo` varchar(255) DEFAULT NULL,
  `CreatedDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `UpdatedDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `Signature` varchar(255) DEFAULT NULL,
  `DigitalSignature` varchar(255) DEFAULT NULL,
  `EstimateInvoiceTitle` varchar(150) DEFAULT NULL,
  `SaleInvoiceTitle` varchar(150) DEFAULT NULL,
  `DeliveryChallanTitle` varchar(150) DEFAULT NULL,
  `CreditNoteTitle` varchar(150) DEFAULT NULL,
  `PurchaseInvoiceTitle` varchar(150) DEFAULT NULL,
  `DebitNoteTitle` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`CompanyID`, `Name`, `Name2`, `TRN`, `Currency`, `Mobile`, `Contact`, `Email`, `Website`, `Address`, `Logo`, `BackgroundLogo`, `CreatedDate`, `UpdatedDate`, `Signature`, `DigitalSignature`, `EstimateInvoiceTitle`, `SaleInvoiceTitle`, `DeliveryChallanTitle`, `CreditNoteTitle`, `PurchaseInvoiceTitle`, `DebitNoteTitle`) VALUES
(1, 'TANGO TRAVEL AND TOURISM LLC', NULL, '0000000', 'AED', NULL, '+971 04-2626415', 'Tangotravel21@gmail.com', '------------', 'Persia Cluster, Building O-01. Shop No.6, International City', '86876.jpg', '25705.png', '2023-04-28 11:45:54', '2023-04-28 11:45:54', '88539.png', '<h2><strong>Finance Director,</strong></h2>\r\n\r\n<p><strong>Kashif</strong></p>', 'Quotation', 'SALE INVOICE', 'Delivery Note', 'Credit Note', 'Purchase Bill', 'Debit Note');

-- --------------------------------------------------------

--
-- Table structure for table `expense_detail`
--

CREATE TABLE `expense_detail` (
  `ExpenseDetailID` int NOT NULL,
  `ExpenseMasterID` int DEFAULT NULL,
  `ChartOfAccountID` int DEFAULT NULL,
  `Notes` varchar(255) DEFAULT NULL,
  `TaxPer` double(8,2) DEFAULT NULL,
  `Tax` double(8,2) DEFAULT NULL,
  `Amount` double(8,2) DEFAULT NULL,
  `Date` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `expense_master`
--

CREATE TABLE `expense_master` (
  `ExpenseMasterID` int NOT NULL,
  `Date` date DEFAULT NULL,
  `PaidThrough` int DEFAULT NULL,
  `SupplierID` int DEFAULT NULL,
  `ReferenceNo` varchar(55) DEFAULT NULL,
  `PartyID` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_detail`
--

CREATE TABLE `invoice_detail` (
  `InvoiceDetailID` int NOT NULL,
  `InvoiceMasterID` int DEFAULT NULL,
  `ItemID` int DEFAULT NULL,
  `SupplierID` int DEFAULT NULL,
  `VisaType` varchar(35) DEFAULT NULL,
  `PaxName` varchar(35) DEFAULT NULL,
  `PNR` varchar(35) DEFAULT NULL,
  `Sector` varchar(35) DEFAULT NULL,
  `Fare` double(8,2) DEFAULT NULL,
  `RefNo` varchar(55) DEFAULT NULL,
  `Taxable` double(8,2) DEFAULT NULL,
  `Service` double(8,2) DEFAULT NULL,
  `OPVAT` double(8,2) DEFAULT NULL,
  `IPVAT` double(8,2) DEFAULT NULL,
  `Discount` double(8,2) DEFAULT NULL,
  `Total` double(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice_detail`
--

INSERT INTO `invoice_detail` (`InvoiceDetailID`, `InvoiceMasterID`, `ItemID`, `SupplierID`, `VisaType`, `PaxName`, `PNR`, `Sector`, `Fare`, `RefNo`, `Taxable`, `Service`, `OPVAT`, `IPVAT`, `Discount`, `Total`) VALUES
(3, 1, 21, 4, NULL, 'RAMESH GOVIND KATTI', NULL, NULL, 160.00, 'ITL/44/78084/AE2023', 0.00, 140.00, NULL, NULL, NULL, 300.00),
(4, 2, 12, 3, '12345', 'Muh,. Abduallah', NULL, NULL, 1500.00, NULL, 14.28, 285.72, NULL, NULL, NULL, 1800.00),
(5, 3, 17, 3, NULL, NULL, NULL, NULL, 1500.00, NULL, 0.00, 0.00, NULL, NULL, 250.00, 1250.00);

-- --------------------------------------------------------

--
-- Table structure for table `invoice_master`
--

CREATE TABLE `invoice_master` (
  `InvoiceMasterID` int NOT NULL,
  `InvoiceTypeID` int DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `DueDate` date DEFAULT NULL,
  `PartyID` int DEFAULT NULL,
  `UserID` int DEFAULT NULL,
  `PaymentMode` varchar(25) DEFAULT NULL,
  `Note` varchar(255) DEFAULT NULL,
  `Total` int DEFAULT NULL,
  `Paid` int DEFAULT NULL,
  `Balance` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice_master`
--

INSERT INTO `invoice_master` (`InvoiceMasterID`, `InvoiceTypeID`, `Date`, `DueDate`, `PartyID`, `UserID`, `PaymentMode`, `Note`, `Total`, `Paid`, `Balance`) VALUES
(1, 1, '2023-05-01', '2023-05-01', 6, 1, '110101', NULL, 300, 300, 0),
(2, 1, '2023-07-04', '2023-07-04', 1, 1, '110101', NULL, 1800, 1800, 0),
(3, 2, '2023-07-04', '2023-07-04', 8, 1, '110101', NULL, 1250, 1250, 0);

-- --------------------------------------------------------

--
-- Table structure for table `invoice_type`
--

CREATE TABLE `invoice_type` (
  `InvoiceTypeID` int NOT NULL,
  `InvoiceTypeCode` varchar(35) DEFAULT NULL,
  `InvoiceType` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice_type`
--

INSERT INTO `invoice_type` (`InvoiceTypeID`, `InvoiceTypeCode`, `InvoiceType`) VALUES
(1, 'SI', 'Sales Invoice'),
(2, 'SR', 'Sales Refund');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `ItemID` int NOT NULL,
  `ItemType` varchar(150) DEFAULT NULL,
  `ItemCode` varchar(5) DEFAULT NULL,
  `ItemName` varchar(150) DEFAULT NULL,
  `Unit` varchar(10) DEFAULT NULL,
  `Taxable` varchar(10) DEFAULT NULL,
  `Percentage` double(12,2) DEFAULT NULL,
  `CostPrice` double(12,2) DEFAULT NULL,
  `CostChartofAccountID` int DEFAULT NULL,
  `CostDescription` varchar(255) DEFAULT NULL,
  `SellingPrice` double(12,2) DEFAULT NULL,
  `SellingChartofAccountID` int DEFAULT NULL,
  `SellingDescription` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`ItemID`, `ItemType`, `ItemCode`, `ItemName`, `Unit`, `Taxable`, `Percentage`, `CostPrice`, `CostChartofAccountID`, `CostDescription`, `SellingPrice`, `SellingChartofAccountID`, `SellingDescription`) VALUES
(7, 'Service', 'AP', 'Approval', NULL, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'Service', 'CO', 'Covid Test', NULL, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'Service', 'V1', 'Dubai Visa 1 Month', NULL, 'No', 4.76, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'Service', 'V2', 'Dubai Visa 3 Months', NULL, 'No', 4.76, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'Service', 'V3', 'Dubai Visa 30 Days Inside', NULL, 'No', 4.76, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'Service', 'V4', 'Dubai Visa 90 Days Inside', NULL, 'Yes', 4.76, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'Service', 'FR', 'Freelance', NULL, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'Service', 'H', 'Hotel Booking', NULL, 'Yes', 52.50, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'Service', 'KS', 'KSA', NULL, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'Service', 'S', 'Safari', NULL, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'Service', 'T', 'Ticket Charges', NULL, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'Service', 'V', 'Visa 30 Days', NULL, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, NULL, '101', 'INSURANCE', NULL, 'Yes', 0.00, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `journal`
--

CREATE TABLE `journal` (
  `JournalID` int NOT NULL,
  `VHNO` varchar(15) DEFAULT NULL,
  `JournalType` varchar(10) DEFAULT NULL,
  `ChartOfAccountID` int DEFAULT NULL,
  `PartyID` int DEFAULT NULL,
  `SupplierID` int DEFAULT NULL,
  `VoucherMstID` int DEFAULT NULL,
  `PettyMstID` int DEFAULT NULL,
  `InvoiceMasterID` int DEFAULT NULL,
  `Narration` varchar(255) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Dr` double(10,2) DEFAULT NULL,
  `Cr` double(10,2) DEFAULT NULL,
  `Trace` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `journal`
--

INSERT INTO `journal` (`JournalID`, `VHNO`, `JournalType`, `ChartOfAccountID`, `PartyID`, `SupplierID`, `VoucherMstID`, `PettyMstID`, `InvoiceMasterID`, `Narration`, `Date`, `Dr`, `Cr`, `Trace`) VALUES
(1, 'BP23050001', 'BP', 210100, 4, NULL, 1, NULL, NULL, 'CASH TOP UP TO APAR TRAVEL AED 10,000/-', '2023-05-01', 10000.00, NULL, 0),
(2, 'BP23050001', 'BP', 110201, 4, NULL, 1, NULL, NULL, 'CASH TOP UP TO APAR TRAVEL AED 10,000/-', '2023-05-01', NULL, 10000.00, 0),
(17, 'SI1', 'SI', 110101, 6, NULL, NULL, NULL, 1, NULL, '2023-05-01', 300.00, NULL, 101),
(18, 'SI1', 'SI', 110400, 6, NULL, NULL, NULL, 1, NULL, '2023-05-01', NULL, 300.00, 102),
(19, 'SI1', 'SI', 110400, 6, NULL, NULL, NULL, 1, NULL, '2023-05-01', 300.00, NULL, 105),
(20, 'SI1', 'SI', 510103, 4, NULL, NULL, NULL, 1, NULL, '2023-05-01', NULL, 160.00, 106),
(21, 'SI1', 'SI', 410101, 4, NULL, NULL, NULL, 1, NULL, '2023-05-01', NULL, 140.00, 107),
(22, 'SI1', 'SI', 510103, 4, NULL, NULL, NULL, 1, NULL, '2023-05-01', 160.00, NULL, 109),
(23, 'SI1', 'SI', 210100, 4, NULL, NULL, NULL, 1, NULL, '2023-05-01', NULL, 160.00, 110),
(24, 'SI1', 'SI', 210300, 6, NULL, NULL, NULL, 1, NULL, '2023-05-01', 0.00, NULL, 111),
(29, 'JV23050001', 'JV', 310101, 5, NULL, 2, NULL, NULL, 'Opening balances for air blue', '2023-05-01', 5513.00, NULL, 0),
(30, 'JV23050001', 'JV', 210100, 5, NULL, 2, NULL, NULL, 'Opening balances for air blue', '2023-05-01', NULL, 5513.00, 0),
(31, 'SI2', 'SI', 110101, 1, NULL, NULL, NULL, 2, NULL, '2023-07-04', 1800.00, NULL, 101),
(32, 'SI2', 'SI', 110400, 1, NULL, NULL, NULL, 2, NULL, '2023-07-04', NULL, 1800.00, 102),
(33, 'SI2', 'SI', 110400, 1, NULL, NULL, NULL, 2, NULL, '2023-07-04', 1800.00, NULL, 105),
(34, 'SI2', 'SI', 510103, 3, NULL, NULL, NULL, 2, NULL, '2023-07-04', NULL, 1500.00, 106),
(35, 'SI2', 'SI', 410101, 3, NULL, NULL, NULL, 2, NULL, '2023-07-04', NULL, 285.72, 107),
(36, 'SI2', 'SI', 510103, 3, NULL, NULL, NULL, 2, NULL, '2023-07-04', 1500.00, NULL, 109),
(37, 'SI2', 'SI', 210100, 3, NULL, NULL, NULL, 2, NULL, '2023-07-04', NULL, 1500.00, 110),
(38, 'SI2', 'SI', 210300, 1, NULL, NULL, NULL, 2, NULL, '2023-07-04', NULL, 14.28, 111),
(39, 'SR3', 'SR', 110400, 8, NULL, NULL, NULL, 3, NULL, '2023-07-04', 1250.00, NULL, 103),
(40, 'SR3', 'SR', 110101, 8, NULL, NULL, NULL, 3, NULL, '2023-07-04', NULL, 1250.00, 104),
(41, 'SR3', 'SR', 110400, 8, NULL, NULL, NULL, 3, NULL, '2023-07-04', NULL, 1250.00, 201),
(42, 'SR3', 'SR', 410101, 3, NULL, NULL, NULL, 3, NULL, '2023-07-04', NULL, 0.00, 2022),
(43, 'SR3', 'SR', 410101, 3, NULL, NULL, NULL, 3, NULL, '2023-07-04', NULL, 250.00, 203),
(44, 'SR3', 'SR', 510103, 3, NULL, NULL, NULL, 3, NULL, '2023-07-04', 1500.00, NULL, 204),
(45, 'SR3', 'SR', 510103, 3, NULL, NULL, NULL, 3, NULL, '2023-07-04', NULL, 1500.00, 205),
(46, 'SR3', 'SR', 210100, 3, NULL, NULL, NULL, 3, NULL, '2023-07-04', 1500.00, NULL, 206);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `party`
--

CREATE TABLE `party` (
  `PartyID` int NOT NULL,
  `PartyCategoryID` int DEFAULT NULL,
  `PartyName` varchar(155) DEFAULT NULL,
  `Address` varchar(155) DEFAULT NULL,
  `Phone` varchar(155) DEFAULT NULL,
  `Email` varchar(155) DEFAULT NULL,
  `Active` varchar(155) DEFAULT NULL,
  `InvoiceDueDays` int DEFAULT NULL,
  `eDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `party`
--

INSERT INTO `party` (`PartyID`, `PartyCategoryID`, `PartyName`, `Address`, `Phone`, `Email`, `Active`, `InvoiceDueDays`, `eDate`) VALUES
(1, 1, 'Walkin Customer', NULL, NULL, NULL, 'Yes', NULL, '2023-05-01 11:24:41'),
(2, 2, 'Demo Supplier', NULL, NULL, NULL, 'Yes', NULL, '2023-05-01 11:26:31'),
(3, 2, 'FLY DUBAI', NULL, '600 544 445', 'agencysupportuae@flydubai.com', 'Yes', NULL, '2023-05-01 12:05:43'),
(4, 2, 'APAR TRAVEL', 'DUBAI', '607575375377', 'tangotravel21@gmail.com', 'Yes', NULL, '2023-05-01 13:00:21'),
(5, 2, 'AIRBLUE', 'DEIRA DUBAI', '600544542', 'website@airblue.com', 'Yes', 0, '2023-05-01 13:30:43'),
(6, 1, 'SANDEEP KATTI', 'DUBAI', '0501234567', 'tangotravel21@gmail.com', 'Yes', NULL, '2023-05-01 13:34:12'),
(8, 1, 'Mehmood Exchange', 'Deira Dubai', '0555186303', NULL, 'Yes', 15, '2023-07-04 11:33:35');

-- --------------------------------------------------------

--
-- Table structure for table `party_category`
--

CREATE TABLE `party_category` (
  `PartyCategoryID` int NOT NULL,
  `CategoryCode` varchar(10) DEFAULT NULL,
  `CategoryName` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `party_category`
--

INSERT INTO `party_category` (`PartyCategoryID`, `CategoryCode`, `CategoryName`) VALUES
(1, 'C', 'Customer'),
(2, 'VC', 'Airline Customer'),
(3, 'EC', 'Employee'),
(4, 'X', 'Discontinued'),
(5, 'XC', 'Bad Debds'),
(6, 'VS', 'Supplier'),
(7, 'BC', 'Old Bad Debts');

-- --------------------------------------------------------

--
-- Table structure for table `pettycash_detail`
--

CREATE TABLE `pettycash_detail` (
  `PettyDetID` int NOT NULL,
  `PettyMstID` int DEFAULT NULL,
  `PettyVoucher` varchar(12) DEFAULT NULL,
  `SupplierID` int DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `ChOfAcc` int DEFAULT NULL,
  `Narration` varchar(255) DEFAULT NULL,
  `Invoice` varchar(35) DEFAULT NULL,
  `RefNo` varchar(35) DEFAULT NULL,
  `Debit` double(10,2) DEFAULT NULL,
  `FromChOfAcc` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Triggers `pettycash_detail`
--
DELIMITER $$
CREATE TRIGGER `delete` AFTER DELETE ON `pettycash_detail` FOR EACH ROW begin
delete from journal where PettyMstID = old.PettyMstID;
end
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `journal` AFTER INSERT ON `pettycash_detail` FOR EACH ROW begin
declare chart_name varchar(25);
select ChartOfAccountName into chart_name from chartofaccount where ChartOfAccountID=new.ChOfAcc;

INSERT INTO journal (VHNO,JournalType,ChartOfAccountID,PettyMstID,Narration,Date,Cr)
values (new.PettyVoucher,SUBSTRING(new.PettyVoucher,1,2),new.FromChOfAcc,new.PettyMstID,concat(new.Narration,' (', chart_name,') '),new.Date,new.Debit);


INSERT INTO journal (VHNO,JournalType,ChartOfAccountID,PettyMstID,Narration,Date,Dr)
values (new.PettyVoucher,SUBSTRING(new.PettyVoucher,1,2),new.ChOfAcc,new.PettyMstID,new.Narration,new.Date,new.Debit);


end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `pettycash_master`
--

CREATE TABLE `pettycash_master` (
  `PettyMstID` int NOT NULL,
  `PettyVoucher` varchar(11) DEFAULT NULL,
  `ChOfAcc` int DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Narration` varchar(255) DEFAULT NULL,
  `Credit` double(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `RoleID` int NOT NULL,
  `Table` varchar(55) DEFAULT NULL,
  `Action` varchar(55) DEFAULT NULL,
  `Allow` varchar(1) DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`RoleID`, `Table`, `Action`, `Allow`) VALUES
(1, 'Invoice', 'List', 'Y'),
(12, 'Invoice', 'Create', 'Y'),
(13, 'Invoice', 'Update', 'Y'),
(14, 'Invoice', 'Delete', 'Y'),
(15, 'Invoice', 'View', 'Y'),
(16, 'Invoice', 'PDF', 'Y'),
(63, 'Voucher', 'List', 'Y'),
(64, 'Voucher', 'Create', 'Y'),
(65, 'Voucher', 'Update', 'Y'),
(66, 'Voucher', 'Delete', 'Y'),
(67, 'Voucher', 'View', 'Y'),
(68, 'Petty Cash', 'List', 'Y'),
(69, 'Petty Cash', 'Create', 'Y'),
(70, 'Petty Cash', 'Update', 'Y'),
(71, 'Petty Cash', 'Delete', 'Y'),
(72, 'Petty Cash', 'View', 'Y'),
(73, 'Adjustment Balance', 'Create', 'Y'),
(74, 'Chart of Account', 'List / Create', 'Y'),
(75, 'Chart of Account', 'Update', 'Y'),
(76, 'Chart of Account', 'Delete', 'Y'),
(77, 'Item/Inventory', 'List / Create', 'Y'),
(78, 'Item/Inventory', 'Update', 'Y'),
(79, 'Item/Inventory', 'Delete', 'Y'),
(80, 'Party / Customers', 'List / Create', 'Y'),
(81, 'Party / Customers', 'Update', 'Y'),
(82, 'Party / Customers', 'Delete', 'Y'),
(83, 'Supplier', 'List / Create', 'Y'),
(84, 'Supplier', 'Update', 'Y'),
(85, 'Supplier', 'Delete', 'Y'),
(86, 'User', 'List / Create', 'Y'),
(87, 'User', 'Update', 'Y'),
(88, 'User', 'Delete', 'Y'),
(89, 'User Rights', 'Assign', 'Y'),
(90, 'Party Ledger', 'View', 'Y'),
(91, 'Party Ledger', 'PDF', 'Y'),
(92, 'Party Balance', 'View', 'Y'),
(93, 'Party Balance', 'PDF', 'Y'),
(94, 'Yearly Report', 'View', 'Y'),
(95, 'Yearly Report', 'PDF', 'Y'),
(96, 'Ageing Report', 'View', 'Y'),
(97, 'Ageing Report', 'PDF', 'Y'),
(98, 'Party Analysis', 'View', 'Y'),
(99, 'Party Analysis', 'PDF', 'Y'),
(100, 'Party List', 'View', 'Y'),
(101, 'Party List', 'PDF', 'Y'),
(102, 'Outstanding Invoices', 'View', 'Y'),
(103, 'Outstanding Invoices', 'PDF', 'Y'),
(104, 'Supplier Ledger', 'View', 'Y'),
(105, 'Supplier Ledger', 'PDF', 'Y'),
(106, 'Supplier Balance', 'View', 'Y'),
(107, 'Supplier Balance', 'PDF', 'Y'),
(108, 'Sale Invoice', 'View', 'Y'),
(109, 'Sale Invoice', 'PDF', 'Y'),
(110, 'Ticket Register', 'View', 'Y'),
(111, 'Ticket Register', 'PDF', 'Y'),
(112, 'Airline Summary', 'View', 'Y'),
(113, 'Airline Summary', 'PDF', 'Y'),
(114, 'Sale Man Report', 'View', 'Y'),
(115, 'Sale Man Report', 'PDF', 'Y'),
(116, 'Tax Report', 'View', 'Y'),
(117, 'Tax Report', 'PDF', 'Y'),
(118, 'Sales Report', 'View', 'Y'),
(119, 'Sales Report', 'PDF', 'Y'),
(120, 'Voucher Report', 'View', 'Y'),
(121, 'Voucher Report', 'PDF', 'Y'),
(122, 'Cash Book', 'View', 'Y'),
(123, 'Cash Book', 'PDF', 'Y'),
(124, 'Day Book', 'View', 'Y'),
(125, 'Day Book', 'PDF', 'Y'),
(126, 'General Ledger', 'View', 'Y'),
(127, 'General Ledger', 'PDF', 'Y'),
(128, 'Trial Balance', 'View', 'Y'),
(129, 'Trial Balance', 'PDF', 'Y'),
(130, 'Trial with Activity', 'View', 'Y'),
(131, 'Trial with Activity', 'PDF', 'Y'),
(132, 'Yearly Summary', 'View', 'Y'),
(133, 'Yearly Summary', 'PDF', 'Y'),
(134, 'Profit & Loss ', 'View', 'Y'),
(135, 'Profit & Loss ', 'PDF', 'Y'),
(136, 'Balance Sheet', 'View', 'Y'),
(137, 'Balance Sheet', 'PDF', 'Y'),
(138, 'Invoice Summary', 'View', 'Y'),
(139, 'Invoice Summary', 'PDF', 'Y'),
(140, 'Party Wise Sale', 'View', 'Y'),
(141, 'Party Wise Sale', 'PDF', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `runtotaltestdata`
--

CREATE TABLE `runtotaltestdata` (
  `id` int NOT NULL,
  `value` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `runtotaltestdata`
--

INSERT INTO `runtotaltestdata` (`id`, `value`) VALUES
(1, 1),
(2, 2),
(3, 4),
(4, 7),
(5, 9),
(6, 12),
(7, 13),
(8, 16),
(9, 22),
(10, 42),
(11, 57),
(12, 58),
(13, 59),
(14, 60);

-- --------------------------------------------------------

--
-- Table structure for table `saleman`
--

CREATE TABLE `saleman` (
  `SalemanID` int NOT NULL,
  `SalemanName` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `saleman`
--

INSERT INTO `saleman` (`SalemanID`, `SalemanName`) VALUES
(1, 'Yasin'),
(2, 'Babar'),
(3, 'Adnan'),
(4, 'Jaylin');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `SupplierID` int NOT NULL,
  `SupplierCatID` int DEFAULT NULL,
  `Category` varchar(150) DEFAULT NULL,
  `SupplierName` varchar(150) DEFAULT NULL,
  `Address` varchar(150) DEFAULT NULL,
  `Phone` varchar(150) DEFAULT NULL,
  `Email` varchar(150) DEFAULT NULL,
  `Active` varchar(150) DEFAULT NULL,
  `InvoiceDueDays` int DEFAULT NULL,
  `eDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `supplier_category`
--

CREATE TABLE `supplier_category` (
  `SupplierCatID` int NOT NULL,
  `SupplierCode` varchar(10) DEFAULT NULL,
  `SupplierCategory` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier_category`
--

INSERT INTO `supplier_category` (`SupplierCatID`, `SupplierCode`, `SupplierCategory`) VALUES
(1, 'C', 'Customer'),
(2, 'VC', 'Airline Customer'),
(3, 'EC', 'Employee'),
(4, 'X', 'Discontinued'),
(5, 'XC', 'Bad Debds'),
(6, 'VS', 'Supplier'),
(7, 'BC', 'Old Bad Debts');

-- --------------------------------------------------------

--
-- Table structure for table `unit`
--

CREATE TABLE `unit` (
  `UnitID` int NOT NULL,
  `UnitName` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `unit`
--

INSERT INTO `unit` (`UnitID`, `UnitName`) VALUES
(1, 'box'),
(2, 'cm'),
(3, 'dz'),
(4, 'ft'),
(5, 'g'),
(6, 'in'),
(7, 'kg'),
(8, 'km'),
(9, 'lb'),
(10, 'mg'),
(11, 'm'),
(12, 'pcs');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `UserID` int NOT NULL,
  `FullName` varchar(55) DEFAULT NULL,
  `Email` varchar(55) DEFAULT NULL,
  `Password` varchar(75) DEFAULT NULL,
  `UserType` varchar(25) DEFAULT NULL,
  `eDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Active` varchar(5) DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`UserID`, `FullName`, `Email`, `Password`, `UserType`, `eDate`, `Active`) VALUES
(1, 'Trango Travel', 'tango@extbooks.com', '123456', 'Admin', '2023-05-01 11:09:43', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `RoleId` int NOT NULL,
  `UserID` int DEFAULT NULL,
  `Table` varchar(55) DEFAULT NULL,
  `Action` varchar(55) DEFAULT NULL,
  `Allow` varchar(10) DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`RoleId`, `UserID`, `Table`, `Action`, `Allow`) VALUES
(4301, 1, 'Invoice', 'List', 'Y'),
(4302, 1, 'Invoice', 'Create', 'Y'),
(4303, 1, 'Invoice', 'Update', 'Y'),
(4304, 1, 'Invoice', 'Delete', 'Y'),
(4305, 1, 'Invoice', 'View', 'Y'),
(4306, 1, 'Invoice', 'PDF', 'Y'),
(4307, 1, 'Voucher', 'List', 'Y'),
(4308, 1, 'Voucher', 'Create', 'Y'),
(4309, 1, 'Voucher', 'Update', 'Y'),
(4310, 1, 'Voucher', 'Delete', 'Y'),
(4311, 1, 'Voucher', 'View', 'Y'),
(4312, 1, 'Petty Cash', 'List', 'Y'),
(4313, 1, 'Petty Cash', 'Create', 'Y'),
(4314, 1, 'Petty Cash', 'Update', 'Y'),
(4315, 1, 'Petty Cash', 'Delete', 'Y'),
(4316, 1, 'Petty Cash', 'View', 'Y'),
(4317, 1, 'Adjustment Balance', 'Create', 'Y'),
(4318, 1, 'Chart of Account', 'List / Create', 'Y'),
(4319, 1, 'Chart of Account', 'Update', 'Y'),
(4320, 1, 'Chart of Account', 'Delete', 'Y'),
(4321, 1, 'Item/Inventory', 'List / Create', 'Y'),
(4322, 1, 'Item/Inventory', 'Update', 'Y'),
(4323, 1, 'Item/Inventory', 'Delete', 'Y'),
(4324, 1, 'Party / Customers', 'List / Create', 'Y'),
(4325, 1, 'Party / Customers', 'Update', 'Y'),
(4326, 1, 'Party / Customers', 'Delete', 'Y'),
(4327, 1, 'Supplier', 'List / Create', 'Y'),
(4328, 1, 'Supplier', 'Update', 'Y'),
(4329, 1, 'Supplier', 'Delete', 'Y'),
(4330, 1, 'User', 'List / Create', 'Y'),
(4331, 1, 'User', 'Update', 'Y'),
(4332, 1, 'User', 'Delete', 'Y'),
(4333, 1, 'User Rights', 'Assign', 'Y'),
(4334, 1, 'Party Ledger', 'View', 'Y'),
(4335, 1, 'Party Ledger', 'PDF', 'Y'),
(4336, 1, 'Party Balance', 'View', 'Y'),
(4337, 1, 'Party Balance', 'PDF', 'Y'),
(4338, 1, 'Yearly Report', 'View', 'Y'),
(4339, 1, 'Yearly Report', 'PDF', 'Y'),
(4340, 1, 'Ageing Report', 'View', 'Y'),
(4341, 1, 'Ageing Report', 'PDF', 'Y'),
(4342, 1, 'Party Analysis', 'View', 'Y'),
(4343, 1, 'Party Analysis', 'PDF', 'Y'),
(4344, 1, 'Party List', 'View', 'Y'),
(4345, 1, 'Party List', 'PDF', 'Y'),
(4346, 1, 'Outstanding Invoices', 'View', 'Y'),
(4347, 1, 'Outstanding Invoices', 'PDF', 'Y'),
(4348, 1, 'Supplier Ledger', 'View', 'Y'),
(4349, 1, 'Supplier Ledger', 'PDF', 'Y'),
(4350, 1, 'Supplier Balance', 'View', 'Y'),
(4351, 1, 'Supplier Balance', 'PDF', 'Y'),
(4352, 1, 'Sale Invoice', 'View', 'Y'),
(4353, 1, 'Sale Invoice', 'PDF', 'Y'),
(4354, 1, 'Ticket Register', 'View', 'Y'),
(4355, 1, 'Ticket Register', 'PDF', 'Y'),
(4356, 1, 'Airline Summary', 'View', 'Y'),
(4357, 1, 'Airline Summary', 'PDF', 'Y'),
(4358, 1, 'Sale Man Report', 'View', 'Y'),
(4359, 1, 'Sale Man Report', 'PDF', 'Y'),
(4360, 1, 'Tax Report', 'View', 'Y'),
(4361, 1, 'Tax Report', 'PDF', 'Y'),
(4362, 1, 'Sales Report', 'View', 'Y'),
(4363, 1, 'Sales Report', 'PDF', 'Y'),
(4364, 1, 'Voucher Report', 'View', 'Y'),
(4365, 1, 'Voucher Report', 'PDF', 'Y'),
(4366, 1, 'Cash Book', 'View', 'Y'),
(4367, 1, 'Cash Book', 'PDF', 'Y'),
(4368, 1, 'Day Book', 'View', 'Y'),
(4369, 1, 'Day Book', 'PDF', 'Y'),
(4370, 1, 'General Ledger', 'View', 'Y'),
(4371, 1, 'General Ledger', 'PDF', 'Y'),
(4372, 1, 'Trial Balance', 'View', 'Y'),
(4373, 1, 'Trial Balance', 'PDF', 'Y'),
(4374, 1, 'Trial with Activity', 'View', 'Y'),
(4375, 1, 'Trial with Activity', 'PDF', 'Y'),
(4376, 1, 'Yearly Summary', 'View', 'Y'),
(4377, 1, 'Yearly Summary', 'PDF', 'Y'),
(4378, 1, 'Profit & Loss', 'View', 'Y'),
(4379, 1, 'Profit & Loss', 'PDF', 'Y'),
(4380, 1, 'Balance Sheet', 'View', 'Y'),
(4381, 1, 'Balance Sheet', 'PDF', 'Y'),
(4382, 1, 'Invoice Summary', 'View', 'Y'),
(4383, 1, 'Invoice Summary', 'PDF', 'Y'),
(4384, 1, 'Party Wise Sale', 'View', 'Y'),
(4385, 1, 'Party Wise Sale', 'PDF', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `visa`
--

CREATE TABLE `visa` (
  `VisaID` int NOT NULL,
  `Date` date DEFAULT NULL,
  `DueDate` date DEFAULT NULL,
  `PassangerName` varchar(155) DEFAULT NULL,
  `VisaNo` varchar(155) DEFAULT NULL,
  `SupplierID` int DEFAULT NULL,
  `PartyID` int DEFAULT NULL,
  `Nationality` varchar(155) DEFAULT NULL,
  `Phone` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `eDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `visa`
--

INSERT INTO `visa` (`VisaID`, `Date`, `DueDate`, `PassangerName`, `VisaNo`, `SupplierID`, `PartyID`, `Nationality`, `Phone`, `Email`, `Address`, `eDate`) VALUES
(1, '2023-05-03', '2023-05-30', 'Kashif', '12345666', 1576, 1053, 'Pakistani', NULL, NULL, NULL, '2023-05-03 11:50:39'),
(2, '2023-05-03', '2023-06-08', 'klmmmmm', '654654', 1023, 1012, 'd', NULL, NULL, NULL, '2023-05-03 16:33:44'),
(4, '2023-05-04', '2023-05-11', 'Kashif Mushtaq', '12345', 3, 4, 'Pakistani', NULL, NULL, NULL, '2023-05-04 04:27:53'),
(5, '2023-07-10', '2023-07-29', 'Ahsan', '32423423', 2, 3, 'Pakistani', '+923339322880', 'mr.elahi.ehsan@gmail.com', 'Address Line 2', '2023-07-10 10:29:32');

-- --------------------------------------------------------

--
-- Table structure for table `voucher_detail`
--

CREATE TABLE `voucher_detail` (
  `VoucherDetID` int NOT NULL,
  `VoucherMstID` int DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Voucher` varchar(15) DEFAULT NULL,
  `ChOfAcc` int DEFAULT NULL,
  `PartyID` int DEFAULT NULL,
  `SupplierID` int DEFAULT NULL,
  `Narration` varchar(255) DEFAULT NULL,
  `InvoiceNo` varchar(75) DEFAULT NULL,
  `RefNo` varchar(75) DEFAULT NULL,
  `Debit` double(10,2) DEFAULT NULL,
  `Credit` double(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `voucher_detail`
--

INSERT INTO `voucher_detail` (`VoucherDetID`, `VoucherMstID`, `Date`, `Voucher`, `ChOfAcc`, `PartyID`, `SupplierID`, `Narration`, `InvoiceNo`, `RefNo`, `Debit`, `Credit`) VALUES
(1, 1, '2023-05-01', 'BP23050001', 210100, 4, NULL, 'CASH TOP UP TO APAR TRAVEL AED 10,000/-', NULL, NULL, 10000.00, NULL),
(2, 1, '2023-05-01', 'BP23050001', 110201, 4, NULL, 'CASH TOP UP TO APAR TRAVEL AED 10,000/-', NULL, NULL, NULL, 10000.00),
(7, 2, '2023-05-01', 'JV23050001', 310101, 5, NULL, 'Opening balances for air blue', NULL, NULL, 5513.00, NULL),
(8, 2, '2023-05-01', 'JV23050001', 210100, 5, NULL, 'Opening balances for air blue', NULL, NULL, NULL, 5513.00);

--
-- Triggers `voucher_detail`
--
DELIMITER $$
CREATE TRIGGER `beforeinsert` AFTER INSERT ON `voucher_detail` FOR EACH ROW begin
 
INSERT INTO journal (VHNO,JournalType,ChartOfAccountID,SupplierID,VoucherMstID,Narration,Date,Dr,Cr,PartyID) 
values (new.Voucher,SUBSTRING(new.Voucher,1,2),new.ChOfAcc,new.SupplierID,new.VoucherMstID,new.Narration,new.Date,new.Debit,new.Credit,new.PartyID);
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `voucher_master`
--

CREATE TABLE `voucher_master` (
  `VoucherMstID` int NOT NULL,
  `VoucherCodeID` int DEFAULT NULL,
  `Voucher` varchar(15) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Narration` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `voucher_master`
--

INSERT INTO `voucher_master` (`VoucherMstID`, `VoucherCodeID`, `Voucher`, `Date`, `Narration`) VALUES
(1, 1, 'BP23050001', '2023-05-01', 'CASH TOP UP TO APAR TRAVEL AED 10,000/-'),
(2, 7, 'JV23050001', '2023-05-01', 'Opening balances for air blue');

-- --------------------------------------------------------

--
-- Table structure for table `voucher_type`
--

CREATE TABLE `voucher_type` (
  `VoucherTypeID` int NOT NULL,
  `VoucherCode` varchar(35) DEFAULT NULL,
  `VoucherTypeName` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `voucher_type`
--

INSERT INTO `voucher_type` (`VoucherTypeID`, `VoucherCode`, `VoucherTypeName`) VALUES
(1, 'BP', 'BANK PAYMENT'),
(2, 'BR', 'BANK RECEIPT'),
(3, 'CN', 'CREDIT NOTE'),
(4, 'CP', 'CASH PAYMENT'),
(5, 'CR', 'CASH RECEIPT'),
(6, 'DN', 'DEBIT NOTES'),
(7, 'JV', 'JOURNAL VOUCHER');

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_cashflow`
-- (See below for the actual view)
--
CREATE TABLE `v_cashflow` (
`Dr` double(19,2)
,`Cr` double(19,2)
,`Balance` double(22,2)
,`MonthName` varchar(37)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_chartofaccount`
-- (See below for the actual view)
--
CREATE TABLE `v_chartofaccount` (
`ChartOfAccountID` int
,`ChartOfAccountName` varchar(75)
,`CODE` varchar(15)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_expense_chart`
-- (See below for the actual view)
--
CREATE TABLE `v_expense_chart` (
`MonthName` varchar(69)
,`Balance` double(22,2)
,`ChartOfAccountName` varchar(75)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_income_exp_chart`
-- (See below for the actual view)
--
CREATE TABLE `v_income_exp_chart` (
`Dr` double(19,2)
,`Cr` double(19,2)
,`Balance` double(22,2)
,`MonthName` varchar(37)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_invoice_detail`
-- (See below for the actual view)
--
CREATE TABLE `v_invoice_detail` (
`ItemCode` varchar(5)
,`ItemName` varchar(150)
,`VisaType` varchar(35)
,`PaxName` varchar(35)
,`PNR` varchar(35)
,`Sector` varchar(35)
,`Fare` double(8,2)
,`RefNo` varchar(55)
,`Taxable` double(8,2)
,`Service` double(22,2)
,`OPVAT` double(8,2)
,`IPVAT` double(8,2)
,`Discount` double(22,2)
,`InvoiceDetailID` int
,`InvoiceMasterID` int
,`ItemID` int
,`SupplierID` int
,`Date` date
,`InvoiceTypeID` int
,`InvoiceTypeCode` varchar(35)
,`UserID` int
,`PartyName` varchar(155)
,`SalemanName` varchar(35)
,`PartyCategoryID` int
,`CategoryCode` varchar(10)
,`CategoryName` varchar(55)
,`PartyID` int
,`InvoiceNo` varchar(47)
,`Total` int
,`Paid` int
,`Balance` int
,`PaymentMode` varchar(25)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_invoice_detail1`
-- (See below for the actual view)
--
CREATE TABLE `v_invoice_detail1` (
`ItemCode` varchar(5)
,`ItemName` varchar(150)
,`VisaType` varchar(35)
,`PaxName` varchar(35)
,`PNR` varchar(35)
,`Sector` varchar(35)
,`Fare` double(8,2)
,`RefNo` varchar(55)
,`Taxable` double(8,2)
,`Service` double(8,2)
,`OPVAT` double(8,2)
,`IPVAT` double(8,2)
,`Discount` double(8,2)
,`Total` bigint
,`InvoiceDetailID` int
,`InvoiceMasterID` int
,`ItemID` int
,`Date` date
,`InvoiceTypeID` int
,`InvoiceTypeCode` varchar(35)
,`UserID` int
,`PartyName` varchar(155)
,`SalemanName` varchar(35)
,`PartyID` int
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_invoice_master`
-- (See below for the actual view)
--
CREATE TABLE `v_invoice_master` (
`InvoiceMasterID` int
,`InvoiceTypeID` int
,`InvoiceTypeCode` varchar(35)
,`InvoiceCode` varchar(47)
,`InvoiceType` varchar(35)
,`Date` date
,`UserID` int
,`PaymentMode` varchar(25)
,`Total` int
,`Paid` int
,`Balance` int
,`DueDate` date
,`Note` varchar(255)
,`PartyName` varchar(155)
,`Address` varchar(155)
,`Phone` varchar(155)
,`Email` varchar(155)
,`PartyID` int
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_journal`
-- (See below for the actual view)
--
CREATE TABLE `v_journal` (
`VHNO` varchar(15)
,`JournalType` varchar(10)
,`ChartOfAccountID` int
,`ChartOfAccountName` varchar(75)
,`SupplierID` int
,`VoucherMstID` int
,`PettyMstID` int
,`InvoiceMasterID` int
,`Date` date
,`Dr` double(19,2)
,`Cr` double(19,2)
,`PartyID` int
,`Narration` varchar(255)
,`L1` int
,`L2` int
,`L3` int
,`CODE` varchar(15)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_party`
-- (See below for the actual view)
--
CREATE TABLE `v_party` (
`PartyID` int
,`PartyCategoryID` int
,`CategoryCode` varchar(10)
,`CategoryName` varchar(55)
,`PartyName` varchar(155)
,`Address` varchar(155)
,`Phone` varchar(155)
,`Email` varchar(155)
,`Active` varchar(155)
,`InvoiceDueDays` int
,`eDate` timestamp
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_party1`
-- (See below for the actual view)
--
CREATE TABLE `v_party1` (
`PartyID` int
,`PartyCategoryID` int
,`CategoryCode` varchar(10)
,`CategoryName` varchar(55)
,`PartyName` varchar(155)
,`Address` varchar(155)
,`Phone` varchar(155)
,`Email` varchar(155)
,`Active` varchar(155)
,`InvoiceDueDays` int
,`eDate` timestamp
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_partywise_sale`
-- (See below for the actual view)
--
CREATE TABLE `v_partywise_sale` (
`PartyID` int
,`PartyName` varchar(155)
,`Qty` bigint
,`Fare` double(19,2)
,`Total` double(19,2)
,`Service` double(19,2)
,`InvoiceTypeID` int
,`Discount` double(19,2)
,`InvoiceTypeCode` varchar(35)
,`InvoiceType` varchar(35)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_party_balance`
-- (See below for the actual view)
--
CREATE TABLE `v_party_balance` (
`VHNO` varchar(15)
,`JournalType` varchar(10)
,`ChartOfAccountID` int
,`ChartOfAccountName` varchar(75)
,`VoucherMstID` int
,`PettyMstID` int
,`InvoiceMasterID` int
,`Date` date
,`Dr` double(19,2)
,`Cr` double(19,2)
,`PartyID` int
,`Narration` varchar(255)
,`PartyName` varchar(155)
,`PartyCategoryID` int
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_party_montly_balance`
-- (See below for the actual view)
--
CREATE TABLE `v_party_montly_balance` (
`Date` varchar(37)
,`Dr` double(19,2)
,`Cr` double(19,2)
,`Balance` double(22,2)
,`PartyID` int
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_pettycash_master`
-- (See below for the actual view)
--
CREATE TABLE `v_pettycash_master` (
`PettyMstID` int
,`PettyVoucher` varchar(11)
,`ChartOfAccountID` int
,`CODE` varchar(15)
,`ChartOfAccountName` varchar(75)
,`Date` date
,`Narration` varchar(255)
,`Credit` double(10,2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_rev_exp`
-- (See below for the actual view)
--
CREATE TABLE `v_rev_exp` (
`Rev` double(22,2)
,`Exp` int
,`DATE_FORMAT(date,'%M-%Y')` varchar(69)
,`date_format(``v_journal``.``Date``,'%m-%Y')` varchar(7)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_rev_exp_chart`
-- (See below for the actual view)
--
CREATE TABLE `v_rev_exp_chart` (
`Rev` double
,`Exp` decimal(33,0)
,`MonthName` varchar(69)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_supplier`
-- (See below for the actual view)
--
CREATE TABLE `v_supplier` (
`SupplierID` int
,`SupplierCatID` int
,`SupplierCategory` varchar(66)
,`Category` varchar(150)
,`SupplierName` varchar(150)
,`Address` varchar(150)
,`Phone` varchar(150)
,`Email` varchar(150)
,`Active` varchar(150)
,`InvoiceDueDays` int
,`eDate` timestamp
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_supplier_balance`
-- (See below for the actual view)
--
CREATE TABLE `v_supplier_balance` (
`SupplierID` int
,`Date` varchar(37)
,`Dr` double(19,2)
,`Cr` double(19,2)
,`Balance` double(19,2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_trial`
-- (See below for the actual view)
--
CREATE TABLE `v_trial` (
`ChartOfAccountID` int
,`ChartOfAccountName` varchar(75)
,`Dr` double(19,2)
,`Cr` double(19,2)
,`Balance` double(22,2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_trial_balance`
-- (See below for the actual view)
--
CREATE TABLE `v_trial_balance` (
`ChartOfAccountID` int
,`ChartOfAccountName` varchar(75)
,`Dr` double(22,2)
,`Cr` double(22,2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_vc_montly_balance`
-- (See below for the actual view)
--
CREATE TABLE `v_vc_montly_balance` (
`Date` varchar(37)
,`Dr` double(19,2)
,`Cr` double(19,2)
,`Balance` double(22,2)
,`PartyID` int
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_visa`
-- (See below for the actual view)
--
CREATE TABLE `v_visa` (
`VisaID` int
,`Date` varchar(10)
,`DueDate` varchar(10)
,`PassangerName` varchar(155)
,`VisaNo` varchar(155)
,`SupplierID` int
,`PartyID` int
,`Nationality` varchar(155)
,`Phone` varchar(255)
,`Email` varchar(255)
,`Address` varchar(255)
,`eDate` timestamp
,`PartyName` varchar(155)
,`PartyAddress` varchar(155)
,`PartyPhone` varchar(155)
,`PartyEmail` varchar(155)
,`VisaExpiry` bigint
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_voucher`
-- (See below for the actual view)
--
CREATE TABLE `v_voucher` (
`VoucherMstID` int
,`VoucherCode` varchar(35)
,`VoucherTypeName` varchar(35)
,`Voucher` varchar(15)
,`Date` date
,`Narration` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_voucher_detail`
-- (See below for the actual view)
--
CREATE TABLE `v_voucher_detail` (
`VoucherMstID` int
,`VoucherCodeID` int
,`Voucher` varchar(15)
,`NarrationMaster` varchar(255)
,`Date` date
,`ChOfAcc` int
,`ChartOfAccountName` varchar(75)
,`Debit` double(10,2)
,`Credit` double(10,2)
,`InvoiceNo` varchar(75)
,`Narration` varchar(255)
,`SupplierID` int
,`PartyID` int
,`RefNo` varchar(75)
,`PartyName` varchar(155)
,`SupplierName` varchar(150)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_voucher_master`
-- (See below for the actual view)
--
CREATE TABLE `v_voucher_master` (
`VoucherMstID` int
,`VoucherCodeID` int
,`Voucher` varchar(15)
,`Date` date
,`Narration` varchar(255)
,`VoucherTypeID` int
,`VoucherCode` varchar(35)
,`VoucherTypeName` varchar(35)
);

-- --------------------------------------------------------

--
-- Structure for view `v_cashflow`
--
DROP TABLE IF EXISTS `v_cashflow`;

Create or Replace VIEW `v_cashflow`  AS SELECT sum(ifnull(`journal`.`Dr`,0)) AS `Dr`, sum(ifnull(`journal`.`Cr`,0)) AS `Cr`, (sum(ifnull(`journal`.`Dr`,0)) - sum(ifnull(`journal`.`Cr`,0))) AS `Balance`, date_format(`journal`.`Date`,'%b-%Y') AS `MonthName` FROM `journal` WHERE (`journal`.`ChartOfAccountID` in (110201,110250,110101,110200)) GROUP BY date_format(`journal`.`Date`,'%b-%Y') ORDER BY date_format(`journal`.`Date`,'%b-%Y') ASC  ;

-- --------------------------------------------------------

--
-- Structure for view `v_chartofaccount`
--
DROP TABLE IF EXISTS `v_chartofaccount`;

Create or Replace VIEW `v_chartofaccount`  AS SELECT `chartofaccount`.`ChartOfAccountID` AS `ChartOfAccountID`, `chartofaccount`.`ChartOfAccountName` AS `ChartOfAccountName`, `chartofaccount`.`CODE` AS `CODE` FROM `chartofaccount` WHERE ((right(`chartofaccount`.`ChartOfAccountID`,5) = 0) AND (`chartofaccount`.`ChartOfAccountName` is not null))  ;

-- --------------------------------------------------------

--
-- Structure for view `v_expense_chart`
--
DROP TABLE IF EXISTS `v_expense_chart`;

Create or Replace VIEW `v_expense_chart`  AS SELECT date_format(`v_journal`.`Date`,'%M-%Y') AS `MonthName`, (sum(if((`v_journal`.`Dr` is null),0,`v_journal`.`Dr`)) - sum(if((`v_journal`.`Cr` is null),0,`v_journal`.`Cr`))) AS `Balance`, `v_journal`.`ChartOfAccountName` AS `ChartOfAccountName` FROM `v_journal` WHERE (`v_journal`.`CODE` = 'E') GROUP BY date_format(`v_journal`.`Date`,'%M-%Y'), `v_journal`.`ChartOfAccountName`  ;

-- --------------------------------------------------------

--
-- Structure for view `v_income_exp_chart`
--
DROP TABLE IF EXISTS `v_income_exp_chart`;

Create or Replace VIEW `v_income_exp_chart`  AS SELECT sum(ifnull(`journal`.`Dr`,0)) AS `Dr`, sum(ifnull(`journal`.`Cr`,0)) AS `Cr`, (sum(ifnull(`journal`.`Dr`,0)) - sum(ifnull(`journal`.`Cr`,0))) AS `Balance`, date_format(`journal`.`Date`,'%b-%Y') AS `MonthName` FROM `journal` WHERE (`journal`.`ChartOfAccountID` in (110201,110250,110101,110200)) GROUP BY date_format(`journal`.`Date`,'%b-%Y')  ;

-- --------------------------------------------------------

--
-- Structure for view `v_invoice_detail`
--
DROP TABLE IF EXISTS `v_invoice_detail`;

Create or Replace VIEW `v_invoice_detail`  AS SELECT `item`.`ItemCode` AS `ItemCode`, `item`.`ItemName` AS `ItemName`, `invoice_detail`.`VisaType` AS `VisaType`, `invoice_detail`.`PaxName` AS `PaxName`, `invoice_detail`.`PNR` AS `PNR`, `invoice_detail`.`Sector` AS `Sector`, `invoice_detail`.`Fare` AS `Fare`, `invoice_detail`.`RefNo` AS `RefNo`, `invoice_detail`.`Taxable` AS `Taxable`, if((`invoice_master`.`InvoiceTypeID` = 1),`invoice_detail`.`Service`,`invoice_detail`.`Discount`) AS `Service`, `invoice_detail`.`OPVAT` AS `OPVAT`, `invoice_detail`.`IPVAT` AS `IPVAT`, if((`invoice_master`.`InvoiceTypeID` = 1),`invoice_detail`.`Discount`,0) AS `Discount`, `invoice_detail`.`InvoiceDetailID` AS `InvoiceDetailID`, `invoice_detail`.`InvoiceMasterID` AS `InvoiceMasterID`, `invoice_detail`.`ItemID` AS `ItemID`, `invoice_detail`.`SupplierID` AS `SupplierID`, `invoice_master`.`Date` AS `Date`, `invoice_master`.`InvoiceTypeID` AS `InvoiceTypeID`, `invoice_type`.`InvoiceTypeCode` AS `InvoiceTypeCode`, `invoice_master`.`UserID` AS `UserID`, `party`.`PartyName` AS `PartyName`, `saleman`.`SalemanName` AS `SalemanName`, `party`.`PartyCategoryID` AS `PartyCategoryID`, `party_category`.`CategoryCode` AS `CategoryCode`, `party_category`.`CategoryName` AS `CategoryName`, `invoice_master`.`PartyID` AS `PartyID`, concat(`invoice_type`.`InvoiceTypeCode`,'-',`invoice_detail`.`InvoiceMasterID`) AS `InvoiceNo`, `invoice_master`.`Total` AS `Total`, `invoice_master`.`Paid` AS `Paid`, `invoice_master`.`Balance` AS `Balance`, `invoice_master`.`PaymentMode` AS `PaymentMode` FROM ((((((`invoice_detail` join `item` on((`invoice_detail`.`ItemID` = `item`.`ItemID`))) join `invoice_master` on((`invoice_detail`.`InvoiceMasterID` = `invoice_master`.`InvoiceMasterID`))) join `invoice_type` on((`invoice_master`.`InvoiceTypeID` = `invoice_type`.`InvoiceTypeID`))) join `party` on((`invoice_master`.`PartyID` = `party`.`PartyID`))) join `saleman` on((`invoice_master`.`UserID` = `saleman`.`SalemanID`))) join `party_category` on((`party`.`PartyCategoryID` = `party_category`.`PartyCategoryID`)))  ;

-- --------------------------------------------------------

--
-- Structure for view `v_invoice_detail1`
--
DROP TABLE IF EXISTS `v_invoice_detail1`;

Create or Replace VIEW `v_invoice_detail1`  AS SELECT `v_invoice_detail`.`ItemCode` AS `ItemCode`, `v_invoice_detail`.`ItemName` AS `ItemName`, `v_invoice_detail`.`VisaType` AS `VisaType`, `v_invoice_detail`.`PaxName` AS `PaxName`, `v_invoice_detail`.`PNR` AS `PNR`, `v_invoice_detail`.`Sector` AS `Sector`, ifnull(`v_invoice_detail`.`Fare`,0) AS `Fare`, `v_invoice_detail`.`RefNo` AS `RefNo`, `v_invoice_detail`.`Taxable` AS `Taxable`, ifnull(`v_invoice_detail`.`Service`,0) AS `Service`, `v_invoice_detail`.`OPVAT` AS `OPVAT`, `v_invoice_detail`.`IPVAT` AS `IPVAT`, ifnull(`v_invoice_detail`.`Discount`,0) AS `Discount`, ifnull(`v_invoice_detail`.`Total`,0) AS `Total`, `v_invoice_detail`.`InvoiceDetailID` AS `InvoiceDetailID`, `v_invoice_detail`.`InvoiceMasterID` AS `InvoiceMasterID`, `v_invoice_detail`.`ItemID` AS `ItemID`, `v_invoice_detail`.`Date` AS `Date`, `v_invoice_detail`.`InvoiceTypeID` AS `InvoiceTypeID`, `v_invoice_detail`.`InvoiceTypeCode` AS `InvoiceTypeCode`, `v_invoice_detail`.`UserID` AS `UserID`, `v_invoice_detail`.`PartyName` AS `PartyName`, `v_invoice_detail`.`SalemanName` AS `SalemanName`, `v_invoice_detail`.`PartyID` AS `PartyID` FROM `v_invoice_detail`  ;

-- --------------------------------------------------------

--
-- Structure for view `v_invoice_master`
--
DROP TABLE IF EXISTS `v_invoice_master`;

Create or Replace VIEW `v_invoice_master`  AS SELECT `invoice_master`.`InvoiceMasterID` AS `InvoiceMasterID`, `invoice_master`.`InvoiceTypeID` AS `InvoiceTypeID`, `invoice_type`.`InvoiceTypeCode` AS `InvoiceTypeCode`, concat(`invoice_type`.`InvoiceTypeCode`,'-',`invoice_master`.`InvoiceMasterID`) AS `InvoiceCode`, `invoice_type`.`InvoiceType` AS `InvoiceType`, `invoice_master`.`Date` AS `Date`, `invoice_master`.`UserID` AS `UserID`, `invoice_master`.`PaymentMode` AS `PaymentMode`, `invoice_master`.`Total` AS `Total`, `invoice_master`.`Paid` AS `Paid`, `invoice_master`.`Balance` AS `Balance`, `invoice_master`.`DueDate` AS `DueDate`, `invoice_master`.`Note` AS `Note`, `party`.`PartyName` AS `PartyName`, `party`.`Address` AS `Address`, `party`.`Phone` AS `Phone`, `party`.`Email` AS `Email`, `party`.`PartyID` AS `PartyID` FROM (((`invoice_master` join `invoice_detail` on((`invoice_master`.`InvoiceMasterID` = `invoice_detail`.`InvoiceMasterID`))) join `invoice_type` on((`invoice_master`.`InvoiceTypeID` = `invoice_type`.`InvoiceTypeID`))) join `party` on((`invoice_master`.`PartyID` = `party`.`PartyID`))) ORDER BY `invoice_master`.`InvoiceMasterID` ASC  ;

-- --------------------------------------------------------

--
-- Structure for view `v_journal`
--
DROP TABLE IF EXISTS `v_journal`;

Create or Replace VIEW `v_journal`  AS SELECT `journal`.`VHNO` AS `VHNO`, `journal`.`JournalType` AS `JournalType`, `journal`.`ChartOfAccountID` AS `ChartOfAccountID`, `chartofaccount`.`ChartOfAccountName` AS `ChartOfAccountName`, `journal`.`SupplierID` AS `SupplierID`, `journal`.`VoucherMstID` AS `VoucherMstID`, `journal`.`PettyMstID` AS `PettyMstID`, `journal`.`InvoiceMasterID` AS `InvoiceMasterID`, `journal`.`Date` AS `Date`, sum(`journal`.`Dr`) AS `Dr`, sum(`journal`.`Cr`) AS `Cr`, `journal`.`PartyID` AS `PartyID`, `journal`.`Narration` AS `Narration`, `chartofaccount`.`L1` AS `L1`, `chartofaccount`.`L2` AS `L2`, `chartofaccount`.`L3` AS `L3`, `chartofaccount`.`CODE` AS `CODE` FROM (`chartofaccount` join `journal` on((`chartofaccount`.`ChartOfAccountID` = `journal`.`ChartOfAccountID`))) GROUP BY `journal`.`VHNO`, `journal`.`JournalType`, `journal`.`ChartOfAccountID`, `chartofaccount`.`ChartOfAccountName`, `journal`.`SupplierID`, `journal`.`VoucherMstID`, `journal`.`PettyMstID`, `journal`.`InvoiceMasterID`, `journal`.`Date`, `journal`.`PartyID`, `journal`.`Narration`, `chartofaccount`.`L1`, `chartofaccount`.`L2`, `chartofaccount`.`L3`, `chartofaccount`.`CODE`, `chartofaccount`.`CODE`, `chartofaccount`.`CODE`  ;

-- --------------------------------------------------------

--
-- Structure for view `v_party`
--
DROP TABLE IF EXISTS `v_party`;

Create or Replace VIEW `v_party`  AS SELECT `party`.`PartyID` AS `PartyID`, `party_category`.`PartyCategoryID` AS `PartyCategoryID`, `party_category`.`CategoryCode` AS `CategoryCode`, `party_category`.`CategoryName` AS `CategoryName`, `party`.`PartyName` AS `PartyName`, `party`.`Address` AS `Address`, `party`.`Phone` AS `Phone`, `party`.`Email` AS `Email`, `party`.`Active` AS `Active`, `party`.`InvoiceDueDays` AS `InvoiceDueDays`, `party`.`eDate` AS `eDate` FROM (`party` join `party_category` on((`party`.`PartyCategoryID` = `party_category`.`PartyCategoryID`)))  ;

-- --------------------------------------------------------

--
-- Structure for view `v_party1`
--
DROP TABLE IF EXISTS `v_party1`;

Create or Replace VIEW `v_party1`  AS SELECT `party`.`PartyID` AS `PartyID`, `party_category`.`PartyCategoryID` AS `PartyCategoryID`, `party_category`.`CategoryCode` AS `CategoryCode`, `party_category`.`CategoryName` AS `CategoryName`, `party`.`PartyName` AS `PartyName`, `party`.`Address` AS `Address`, `party`.`Phone` AS `Phone`, `party`.`Email` AS `Email`, `party`.`Active` AS `Active`, `party`.`InvoiceDueDays` AS `InvoiceDueDays`, `party`.`eDate` AS `eDate` FROM (`party` join `party_category` on((`party`.`PartyCategoryID` = `party_category`.`PartyCategoryID`))) WHERE (`party_category`.`PartyCategoryID` = 2)  ;

-- --------------------------------------------------------

--
-- Structure for view `v_partywise_sale`
--
DROP TABLE IF EXISTS `v_partywise_sale`;

Create or Replace VIEW `v_partywise_sale`  AS SELECT `invoice_master`.`PartyID` AS `PartyID`, `party`.`PartyName` AS `PartyName`, count(`invoice_detail`.`InvoiceDetailID`) AS `Qty`, sum(`invoice_detail`.`Fare`) AS `Fare`, sum(`invoice_detail`.`Total`) AS `Total`, sum(`invoice_detail`.`Service`) AS `Service`, `invoice_master`.`InvoiceTypeID` AS `InvoiceTypeID`, sum(`invoice_detail`.`Discount`) AS `Discount`, `invoice_type`.`InvoiceTypeCode` AS `InvoiceTypeCode`, `invoice_type`.`InvoiceType` AS `InvoiceType` FROM (((`invoice_detail` join `invoice_master` on((`invoice_detail`.`InvoiceMasterID` = `invoice_master`.`InvoiceMasterID`))) join `party` on((`invoice_master`.`PartyID` = `party`.`PartyID`))) join `invoice_type` on((`invoice_type`.`InvoiceTypeID` = `invoice_master`.`InvoiceTypeID`))) GROUP BY `invoice_master`.`PartyID`, `party`.`PartyID`, `party`.`PartyName`, `invoice_master`.`InvoiceTypeID`, `invoice_type`.`InvoiceTypeCode`, `invoice_type`.`InvoiceType`  ;

-- --------------------------------------------------------

--
-- Structure for view `v_party_balance`
--
DROP TABLE IF EXISTS `v_party_balance`;

Create or Replace VIEW `v_party_balance`  AS SELECT `v_journal`.`VHNO` AS `VHNO`, `v_journal`.`JournalType` AS `JournalType`, `v_journal`.`ChartOfAccountID` AS `ChartOfAccountID`, `v_journal`.`ChartOfAccountName` AS `ChartOfAccountName`, `v_journal`.`VoucherMstID` AS `VoucherMstID`, `v_journal`.`PettyMstID` AS `PettyMstID`, `v_journal`.`InvoiceMasterID` AS `InvoiceMasterID`, `v_journal`.`Date` AS `Date`, `v_journal`.`Dr` AS `Dr`, `v_journal`.`Cr` AS `Cr`, `v_journal`.`PartyID` AS `PartyID`, `v_journal`.`Narration` AS `Narration`, `party`.`PartyName` AS `PartyName`, `party`.`PartyCategoryID` AS `PartyCategoryID` FROM (`v_journal` join `party` on((`v_journal`.`PartyID` = `party`.`PartyID`)))  ;

-- --------------------------------------------------------

--
-- Structure for view `v_party_montly_balance`
--
DROP TABLE IF EXISTS `v_party_montly_balance`;

Create or Replace VIEW `v_party_montly_balance`  AS SELECT date_format(`journal`.`Date`,'%b-%Y') AS `Date`, sum(ifnull(`journal`.`Dr`,0)) AS `Dr`, sum(ifnull(`journal`.`Cr`,0)) AS `Cr`, (sum(ifnull(`journal`.`Dr`,0)) - sum(ifnull(`journal`.`Cr`,0))) AS `Balance`, `journal`.`PartyID` AS `PartyID` FROM `journal` WHERE ((`journal`.`ChartOfAccountID` = 110400) AND (`journal`.`PartyID` is not null)) GROUP BY `journal`.`PartyID`, date_format(`journal`.`Date`,'%b-%Y')  ;

-- --------------------------------------------------------

--
-- Structure for view `v_pettycash_master`
--
DROP TABLE IF EXISTS `v_pettycash_master`;

Create or Replace VIEW `v_pettycash_master`  AS SELECT `pettycash_master`.`PettyMstID` AS `PettyMstID`, `pettycash_master`.`PettyVoucher` AS `PettyVoucher`, `chartofaccount`.`ChartOfAccountID` AS `ChartOfAccountID`, `chartofaccount`.`CODE` AS `CODE`, `chartofaccount`.`ChartOfAccountName` AS `ChartOfAccountName`, `pettycash_master`.`Date` AS `Date`, `pettycash_master`.`Narration` AS `Narration`, `pettycash_master`.`Credit` AS `Credit` FROM (`chartofaccount` join `pettycash_master` on((`chartofaccount`.`ChartOfAccountID` = `pettycash_master`.`ChOfAcc`)))  ;

-- --------------------------------------------------------

--
-- Structure for view `v_rev_exp`
--
DROP TABLE IF EXISTS `v_rev_exp`;

Create or Replace VIEW `v_rev_exp`  AS SELECT (sum(if((`v_journal`.`Cr` is null),0,`v_journal`.`Cr`)) - sum(if((`v_journal`.`Dr` is null),0,`v_journal`.`Dr`))) AS `Rev`, 0 AS `Exp`, date_format(`v_journal`.`Date`,'%M-%Y') AS `DATE_FORMAT(date,'%M-%Y')`, date_format(`v_journal`.`Date`,'%m-%Y') AS `date_format(``v_journal``.``Date``,'%m-%Y')` FROM `v_journal` WHERE (`v_journal`.`CODE` = 'r') GROUP BY date_format(`v_journal`.`Date`,'%M-%Y'), date_format(`v_journal`.`Date`,'%m-%Y'), `v_journal`.`CODE`  ;

-- --------------------------------------------------------

--
-- Structure for view `v_rev_exp_chart`
--
DROP TABLE IF EXISTS `v_rev_exp_chart`;

Create or Replace VIEW `v_rev_exp_chart`  AS SELECT abs(round(sum(`v_rev_exp`.`Rev`),0)) AS `Rev`, abs(round(sum(`v_rev_exp`.`Exp`),0)) AS `Exp`, `v_rev_exp`.`DATE_FORMAT(date,'%M-%Y')` AS `MonthName` FROM `v_rev_exp` GROUP BY `v_rev_exp`.`DATE_FORMAT(date,'%M-%Y')` ORDER BY `v_rev_exp`.`DATE_FORMAT(date,'%M-%Y')` ASC  ;

-- --------------------------------------------------------

--
-- Structure for view `v_supplier`
--
DROP TABLE IF EXISTS `v_supplier`;

Create or Replace VIEW `v_supplier`  AS SELECT `supplier`.`SupplierID` AS `SupplierID`, `supplier`.`SupplierCatID` AS `SupplierCatID`, concat(`supplier_category`.`SupplierCode`,'-',`supplier_category`.`SupplierCategory`) AS `SupplierCategory`, `supplier`.`Category` AS `Category`, `supplier`.`SupplierName` AS `SupplierName`, `supplier`.`Address` AS `Address`, `supplier`.`Phone` AS `Phone`, `supplier`.`Email` AS `Email`, `supplier`.`Active` AS `Active`, `supplier`.`InvoiceDueDays` AS `InvoiceDueDays`, `supplier`.`eDate` AS `eDate` FROM (`supplier_category` join `supplier` on((`supplier_category`.`SupplierCatID` = `supplier`.`SupplierCatID`)))  ;

-- --------------------------------------------------------

--
-- Structure for view `v_supplier_balance`
--
DROP TABLE IF EXISTS `v_supplier_balance`;

Create or Replace VIEW `v_supplier_balance`  AS SELECT `journal`.`SupplierID` AS `SupplierID`, date_format(`journal`.`Date`,'%b-%Y') AS `Date`, sum(if((`journal`.`Dr` is null),0,`journal`.`Dr`)) AS `Dr`, sum(if((`journal`.`Cr` is null),0,`journal`.`Cr`)) AS `Cr`, sum((if((`journal`.`Dr` is null),0,`journal`.`Dr`) - if((`journal`.`Cr` is null),0,`journal`.`Cr`))) AS `Balance` FROM `journal` WHERE (`journal`.`ChartOfAccountID` = 210100) GROUP BY `journal`.`SupplierID`, date_format(`journal`.`Date`,'%b-%Y')  ;

-- --------------------------------------------------------

--
-- Structure for view `v_trial`
--
DROP TABLE IF EXISTS `v_trial`;

Create or Replace VIEW `v_trial`  AS SELECT `v_journal`.`ChartOfAccountID` AS `ChartOfAccountID`, `v_journal`.`ChartOfAccountName` AS `ChartOfAccountName`, sum(ifnull(`v_journal`.`Dr`,0)) AS `Dr`, sum(ifnull(`v_journal`.`Cr`,0)) AS `Cr`, (sum(ifnull(`v_journal`.`Dr`,0)) - sum(ifnull(`v_journal`.`Cr`,0))) AS `Balance` FROM `v_journal` GROUP BY `v_journal`.`ChartOfAccountID`, `v_journal`.`ChartOfAccountName` ORDER BY `v_journal`.`ChartOfAccountName` ASC  ;

-- --------------------------------------------------------

--
-- Structure for view `v_trial_balance`
--
DROP TABLE IF EXISTS `v_trial_balance`;

Create or Replace VIEW `v_trial_balance`  AS SELECT `v_trial`.`ChartOfAccountID` AS `ChartOfAccountID`, `v_trial`.`ChartOfAccountName` AS `ChartOfAccountName`, if((`v_trial`.`Balance` >= 0),`v_trial`.`Balance`,0) AS `Dr`, if((`v_trial`.`Balance` < 0),abs(`v_trial`.`Balance`),0) AS `Cr` FROM `v_trial`  ;

-- --------------------------------------------------------

--
-- Structure for view `v_vc_montly_balance`
--
DROP TABLE IF EXISTS `v_vc_montly_balance`;

Create or Replace VIEW `v_vc_montly_balance`  AS SELECT date_format(`journal`.`Date`,'%b-%Y') AS `Date`, sum(ifnull(`journal`.`Dr`,0)) AS `Dr`, sum(ifnull(`journal`.`Cr`,0)) AS `Cr`, (sum(ifnull(`journal`.`Dr`,0)) - sum(ifnull(`journal`.`Cr`,0))) AS `Balance`, `journal`.`PartyID` AS `PartyID` FROM (`journal` join `party` on((`journal`.`PartyID` = `party`.`PartyID`))) WHERE ((`journal`.`ChartOfAccountID` in (110400,210100)) AND (`party`.`PartyCategoryID` = 2)) GROUP BY `journal`.`PartyID`, date_format(`journal`.`Date`,'%b-%Y')  ;

-- --------------------------------------------------------

--
-- Structure for view `v_visa`
--
DROP TABLE IF EXISTS `v_visa`;

Create or Replace VIEW `v_visa`  AS SELECT `visa`.`VisaID` AS `VisaID`, date_format(`visa`.`Date`,'%d/%m/%Y') AS `Date`, date_format(`visa`.`DueDate`,'%d/%m/%Y') AS `DueDate`, `visa`.`PassangerName` AS `PassangerName`, `visa`.`VisaNo` AS `VisaNo`, `visa`.`SupplierID` AS `SupplierID`, `visa`.`PartyID` AS `PartyID`, `visa`.`Nationality` AS `Nationality`, `visa`.`Phone` AS `Phone`, `visa`.`Email` AS `Email`, `visa`.`Address` AS `Address`, `visa`.`eDate` AS `eDate`, `party`.`PartyName` AS `PartyName`, `party`.`Address` AS `PartyAddress`, `party`.`Phone` AS `PartyPhone`, `party`.`Email` AS `PartyEmail`, timestampdiff(DAY,sysdate(),`visa`.`DueDate`) AS `VisaExpiry` FROM (`visa` join `party` on((`visa`.`PartyID` = `party`.`PartyID`)))  ;

-- --------------------------------------------------------

--
-- Structure for view `v_voucher`
--
DROP TABLE IF EXISTS `v_voucher`;

Create or Replace VIEW `v_voucher`  AS SELECT `voucher_master`.`VoucherMstID` AS `VoucherMstID`, `voucher_type`.`VoucherCode` AS `VoucherCode`, `voucher_type`.`VoucherTypeName` AS `VoucherTypeName`, `voucher_master`.`Voucher` AS `Voucher`, `voucher_master`.`Date` AS `Date`, `voucher_master`.`Narration` AS `Narration` FROM (`voucher_master` join `voucher_type` on((`voucher_master`.`VoucherCodeID` = `voucher_type`.`VoucherTypeID`)))  ;

-- --------------------------------------------------------

--
-- Structure for view `v_voucher_detail`
--
DROP TABLE IF EXISTS `v_voucher_detail`;

Create or Replace VIEW `v_voucher_detail`  AS SELECT `voucher_master`.`VoucherMstID` AS `VoucherMstID`, `voucher_master`.`VoucherCodeID` AS `VoucherCodeID`, `voucher_master`.`Voucher` AS `Voucher`, `voucher_master`.`Narration` AS `NarrationMaster`, `voucher_detail`.`Date` AS `Date`, `voucher_detail`.`ChOfAcc` AS `ChOfAcc`, `chartofaccount`.`ChartOfAccountName` AS `ChartOfAccountName`, `voucher_detail`.`Debit` AS `Debit`, `voucher_detail`.`Credit` AS `Credit`, `voucher_detail`.`InvoiceNo` AS `InvoiceNo`, `voucher_detail`.`Narration` AS `Narration`, `voucher_detail`.`SupplierID` AS `SupplierID`, `voucher_detail`.`PartyID` AS `PartyID`, `voucher_detail`.`RefNo` AS `RefNo`, `party`.`PartyName` AS `PartyName`, `supplier`.`SupplierName` AS `SupplierName` FROM ((((`voucher_detail` join `voucher_master` on((`voucher_master`.`VoucherMstID` = `voucher_detail`.`VoucherMstID`))) join `chartofaccount` on((`chartofaccount`.`ChartOfAccountID` = `voucher_detail`.`ChOfAcc`))) left join `party` on((`voucher_detail`.`PartyID` = `party`.`PartyID`))) left join `supplier` on((`voucher_detail`.`SupplierID` = `supplier`.`SupplierID`)))  ;

-- --------------------------------------------------------

--
-- Structure for view `v_voucher_master`
--
DROP TABLE IF EXISTS `v_voucher_master`;

Create or Replace VIEW `v_voucher_master`  AS SELECT `voucher_master`.`VoucherMstID` AS `VoucherMstID`, `voucher_master`.`VoucherCodeID` AS `VoucherCodeID`, `voucher_master`.`Voucher` AS `Voucher`, `voucher_master`.`Date` AS `Date`, `voucher_master`.`Narration` AS `Narration`, `voucher_type`.`VoucherTypeID` AS `VoucherTypeID`, `voucher_type`.`VoucherCode` AS `VoucherCode`, `voucher_type`.`VoucherTypeName` AS `VoucherTypeName` FROM (`voucher_master` join `voucher_type` on((`voucher_master`.`VoucherCodeID` = `voucher_type`.`VoucherTypeID`)))  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `airline`
--
ALTER TABLE `airline`
  ADD PRIMARY KEY (`AirLineID`);

--
-- Indexes for table `chartofaccount`
--
ALTER TABLE `chartofaccount`
  ADD PRIMARY KEY (`ChartOfAccountID`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`CompanyID`);

--
-- Indexes for table `expense_detail`
--
ALTER TABLE `expense_detail`
  ADD PRIMARY KEY (`ExpenseDetailID`);

--
-- Indexes for table `expense_master`
--
ALTER TABLE `expense_master`
  ADD PRIMARY KEY (`ExpenseMasterID`);

--
-- Indexes for table `invoice_detail`
--
ALTER TABLE `invoice_detail`
  ADD PRIMARY KEY (`InvoiceDetailID`);

--
-- Indexes for table `invoice_master`
--
ALTER TABLE `invoice_master`
  ADD PRIMARY KEY (`InvoiceMasterID`),
  ADD KEY `InvoiceTypeID` (`InvoiceTypeID`),
  ADD KEY `invoice_master_ibfk_2` (`PartyID`);

--
-- Indexes for table `invoice_type`
--
ALTER TABLE `invoice_type`
  ADD PRIMARY KEY (`InvoiceTypeID`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`ItemID`);

--
-- Indexes for table `journal`
--
ALTER TABLE `journal`
  ADD PRIMARY KEY (`JournalID`),
  ADD KEY `VoucherMstID` (`VoucherMstID`),
  ADD KEY `PettyMstID` (`PettyMstID`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `party`
--
ALTER TABLE `party`
  ADD PRIMARY KEY (`PartyID`);

--
-- Indexes for table `party_category`
--
ALTER TABLE `party_category`
  ADD PRIMARY KEY (`PartyCategoryID`);

--
-- Indexes for table `pettycash_detail`
--
ALTER TABLE `pettycash_detail`
  ADD PRIMARY KEY (`PettyDetID`),
  ADD KEY `PettyMstID` (`PettyMstID`);

--
-- Indexes for table `pettycash_master`
--
ALTER TABLE `pettycash_master`
  ADD PRIMARY KEY (`PettyMstID`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`RoleID`);

--
-- Indexes for table `runtotaltestdata`
--
ALTER TABLE `runtotaltestdata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `saleman`
--
ALTER TABLE `saleman`
  ADD PRIMARY KEY (`SalemanID`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`SupplierID`);

--
-- Indexes for table `supplier_category`
--
ALTER TABLE `supplier_category`
  ADD PRIMARY KEY (`SupplierCatID`);

--
-- Indexes for table `unit`
--
ALTER TABLE `unit`
  ADD PRIMARY KEY (`UnitID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`UserID`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`RoleId`);

--
-- Indexes for table `visa`
--
ALTER TABLE `visa`
  ADD PRIMARY KEY (`VisaID`);

--
-- Indexes for table `voucher_detail`
--
ALTER TABLE `voucher_detail`
  ADD PRIMARY KEY (`VoucherDetID`),
  ADD KEY `VoucherMstID` (`VoucherMstID`);

--
-- Indexes for table `voucher_master`
--
ALTER TABLE `voucher_master`
  ADD PRIMARY KEY (`VoucherMstID`);

--
-- Indexes for table `voucher_type`
--
ALTER TABLE `voucher_type`
  ADD PRIMARY KEY (`VoucherTypeID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `airline`
--
ALTER TABLE `airline`
  MODIFY `AirLineID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `expense_detail`
--
ALTER TABLE `expense_detail`
  MODIFY `ExpenseDetailID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expense_master`
--
ALTER TABLE `expense_master`
  MODIFY `ExpenseMasterID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoice_detail`
--
ALTER TABLE `invoice_detail`
  MODIFY `InvoiceDetailID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `invoice_master`
--
ALTER TABLE `invoice_master`
  MODIFY `InvoiceMasterID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `invoice_type`
--
ALTER TABLE `invoice_type`
  MODIFY `InvoiceTypeID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `ItemID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `journal`
--
ALTER TABLE `journal`
  MODIFY `JournalID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `party`
--
ALTER TABLE `party`
  MODIFY `PartyID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `party_category`
--
ALTER TABLE `party_category`
  MODIFY `PartyCategoryID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pettycash_detail`
--
ALTER TABLE `pettycash_detail`
  MODIFY `PettyDetID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pettycash_master`
--
ALTER TABLE `pettycash_master`
  MODIFY `PettyMstID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `RoleID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT for table `runtotaltestdata`
--
ALTER TABLE `runtotaltestdata`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `saleman`
--
ALTER TABLE `saleman`
  MODIFY `SalemanID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `SupplierID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supplier_category`
--
ALTER TABLE `supplier_category`
  MODIFY `SupplierCatID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `unit`
--
ALTER TABLE `unit`
  MODIFY `UnitID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `UserID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `RoleId` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4386;

--
-- AUTO_INCREMENT for table `visa`
--
ALTER TABLE `visa`
  MODIFY `VisaID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `voucher_detail`
--
ALTER TABLE `voucher_detail`
  MODIFY `VoucherDetID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `voucher_master`
--
ALTER TABLE `voucher_master`
  MODIFY `VoucherMstID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `voucher_type`
--
ALTER TABLE `voucher_type`
  MODIFY `VoucherTypeID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `invoice_master`
--
ALTER TABLE `invoice_master`
  ADD CONSTRAINT `invoice_master_ibfk_1` FOREIGN KEY (`InvoiceTypeID`) REFERENCES `invoice_type` (`InvoiceTypeID`),
  ADD CONSTRAINT `invoice_master_ibfk_2` FOREIGN KEY (`PartyID`) REFERENCES `party` (`PartyID`);

--
-- Constraints for table `journal`
--
ALTER TABLE `journal`
  ADD CONSTRAINT `journal_ibfk_1` FOREIGN KEY (`VoucherMstID`) REFERENCES `voucher_master` (`VoucherMstID`) ON DELETE CASCADE,
  ADD CONSTRAINT `journal_ibfk_2` FOREIGN KEY (`PettyMstID`) REFERENCES `pettycash_master` (`PettyMstID`) ON DELETE CASCADE;

--
-- Constraints for table `pettycash_detail`
--
ALTER TABLE `pettycash_detail`
  ADD CONSTRAINT `pettycash_detail_ibfk_1` FOREIGN KEY (`PettyMstID`) REFERENCES `pettycash_master` (`PettyMstID`) ON DELETE CASCADE;

--
-- Constraints for table `voucher_detail`
--
ALTER TABLE `voucher_detail`
  ADD CONSTRAINT `voucher_detail_ibfk_1` FOREIGN KEY (`VoucherMstID`) REFERENCES `voucher_master` (`VoucherMstID`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
