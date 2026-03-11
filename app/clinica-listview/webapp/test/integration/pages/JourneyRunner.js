sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"clinicalistview/test/integration/pages/DoctorsList",
	"clinicalistview/test/integration/pages/DoctorsObjectPage"
], function (JourneyRunner, DoctorsList, DoctorsObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('clinicalistview') + '/test/flpSandbox.html#clinicalistview-tile',
        pages: {
			onTheDoctorsList: DoctorsList,
			onTheDoctorsObjectPage: DoctorsObjectPage
        },
        async: true
    });

    return runner;
});

