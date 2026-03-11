using {tutorial.db as db} from '../db/schema';

service ClinicService {
    entity MedicalServices as projection on db.MedicalServices
        actions {
            @(Common.SideEffects: {TargetProperties: ['capacity']})
            action addCapacity();

            action changeIntroducedDate(newDate: Date);

            @(Common.SideEffects: {TargetProperties: ['status_code']})
            action changeStatus( @(Common: {
                                     ValueListWithFixedValues: true,
                                     Label                   : 'New status',
                                     ValueList               : {
                                         $Type         : 'Common.ValueListType',
                                         CollectionPath: 'ServiceStatus',
                                         Parameters    : [{
                                             $Type            : 'Common.ValueListParameterInOut',
                                             LocalDataProperty: newStatus,
                                             ValueListProperty: 'code',
                                         }, ],
                                     },
                                 })
                                 newStatus: String)
        };

    @(Common.SideEffects: {TargetEntities: ['/ClinicService.EntityContainer/MedicalServices']})
    action addDiscount();

    entity Doctors         as projection on db.Doctors;
    entity Procedures      as projection on db.Procedures;
    entity ServiceStatus   as projection on db.ServiceStatus;

    entity SpecialtiesVH   as projection on db.Specialties;
}

annotate ClinicService.MedicalServices with @odata.draft.enabled;

annotate ClinicService.Doctors with @(odata.draft.enabled);
