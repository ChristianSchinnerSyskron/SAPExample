using sap.capire.demo as my from '../db/data-model';
using {sap} from '@sap/cds/common';


service Testservice {

    //Countries
    entity Countries as projection on sap.common.Countries;

    //Region
    entity Region    as
        projection on my.Region {

            ID,
            country,
            regionCode,
            regionDescription,
            null as regionCodeDisp : my.RegionCodeDisp, //Region code ready for display, e.g. DE-BY or GB-SCT

            modifiedAt,
        };
}
