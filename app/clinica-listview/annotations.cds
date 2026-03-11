using ClinicService as service from '../../srv/service';
annotate service.Doctors with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'name',
                Value : name,
            },
            {
                $Type : 'UI.DataField',
                Label : 'licenseNo',
                Value : licenseNo,
            },
            {
                $Type : 'UI.DataField',
                Label : 'profileFile',
                Value : profileFile,
            },
            {
                $Type : 'UI.DataField',
                Label : 'fileType',
                Value : fileType,
            },
            {
                $Type : 'UI.DataField',
                Label : 'content',
                Value : content,
            },
            {
                $Type : 'UI.DataField',
                Label : 'serviceCount',
                Value : serviceCount,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'licenseNo',
            Value : licenseNo,
        },
        {
            $Type : 'UI.DataField',
            Label : 'name',
            Value : name,
        },
        {
            $Type : 'UI.DataField',
            Label : 'profileFile',
            Value : profileFile,
        },
        {
            $Type : 'UI.DataField',
            Label : 'File Type',
            Value : fileType,
        },
        {
            $Type : 'UI.DataField',
            Label : 'content',
            Value : content,
        },
        {
            $Type : 'UI.DataField',
            Value : services.doctor_ID,
        },
        {
            $Type : 'UI.DataField',
            Value : services.status_code,
        },
        {
            $Type : 'UI.DataField',
            Value : services.capacity,
            Label : 'capacity',
        },
    ],
    UI.SelectionFields : [
        name,
        services.doctor_ID,
        services.status_code,
    ],
    UI.HeaderInfo : {
        TypeName : 'Doctors',
        TypeNamePlural : '',
    },
);

annotate service.Doctors with {
    name @Common.Label : 'name'
};

annotate service.MedicalServices with {
    doctor @Common.Label : 'services/doctor_ID'
};

annotate service.MedicalServices with {
    status @Common.Label : 'services/status_code'
};

