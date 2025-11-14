namespace ust.sowmyapainam.db;
using { cuid ,Currency } from '@sap/cds/common';
using { phn,gender,eml } from './ust.sowmyapainam.reuse';

entity Employee : cuid {
    nameFirst : String(40);
    nameMiddle : String(40);
    nameLast : String(40);
    nameInitials : String(40);
    Gender : gender;
    Language : String;
    phoneNumber : phn;
    Email : eml;
    loginName : String(12);
    Currency : Currency;
    salaryAmount : Decimal(10,2);
    accountNumber : String(16);
    bankId : String(8);
    bankName : String(64);
    
}


