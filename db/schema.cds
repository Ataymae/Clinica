using {
    cuid,
    managed,
    sap.common.Currencies
} from '@sap/cds/common';
//using { Attachments } from '@cap-js/attachments';

namespace tutorial.db;

entity MedicalServices : cuid, managed {
    title        : String; // service name
    doctor       : Association to Doctors;
    specialty    : Association to Specialties;
    introducedAt : Date; // when service was added
    durationMin  : Integer; //duration in minutes
    price        : Decimal(9, 2);
    currency     : Association to Currencies;
    capacity     : Integer; // numberof patient per slot
    status       : Association to ServiceStatus;
    Procedures   : Composition of many Procedures
                       on Procedures.service = $self;
}

entity Specialties {
    key code        : Specialty;
        description : String;
}

type Specialty : String enum {
    GeneralPractice = 'GeneralPractice';
    Cardiology = 'Cardiology';
    Dermatology = 'Dermatology';
    Pediatrics = 'Pediatrics';
    Orthopedics = 'Orthopedics';
    Radiology = 'Radiology';
    Neurology = 'Neurology';
    Psychiatry = 'Psychiatry';
}

entity ServiceStatus {
    key code        : String(1) enum {
            Available = 'A';
            Limited = 'L';
            Retired = 'R';
        }
        criticality : Integer;
        displayText : String;
}

entity Doctors : cuid, managed {
            name         : String;
            licenseNo    : String;
            profileFile  : String;
            fileType     : String @Core.IsMediaType;
            content      : LargeBinary
                                  @Core.MediaType                  : fileType
                                  @Core.AcceptableMediaTypes       : ['application/pdf']
                                  @Core.ContentDisposition.Filename: profileFile;
    virtual serviceCount : Integer;
            //attachments  : Composition of many Attachments;
            services     : Association to many MedicalServices
                               on services.doctor = $self;
}

entity Procedures : cuid, managed {
    key service  : Association to MedicalServices;
        sequence : Integer; // order of procedureor step
        title    : String; // step name
        details  : String; // description or instructions
}
