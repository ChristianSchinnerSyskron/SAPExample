using {
  cuid,
  managed,
  Country
} from '@sap/cds/common';

using from '@sap/cds-common-content';


namespace sap.capire.demo;

type RegionCode     : String(3); //Length 3, per definition of ISO_3166-2
type RegionCodeDisp : String(6); //Length 6, per definition of ISO_3166-2

entity Region : cuid, managed {

  country           : Country; //Country code
  regionCode        : RegionCode; //Region code without country -> ISO_3166-2
  regionDescription : localized String(500); //Region name
}


//Extend the sap.common country entity with counties
extend sap.common.Countries {
  to_region : Composition of many Region
                on to_region.country = $self;
}
