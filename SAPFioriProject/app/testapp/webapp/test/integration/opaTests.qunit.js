sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'testapp/test/integration/FirstJourney',
		'testapp/test/integration/pages/CountriesList',
		'testapp/test/integration/pages/CountriesObjectPage'
    ],
    function(JourneyRunner, opaJourney, CountriesList, CountriesObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('testapp') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheCountriesList: CountriesList,
					onTheCountriesObjectPage: CountriesObjectPage
                }
            },
            opaJourney.run
        );
    }
);