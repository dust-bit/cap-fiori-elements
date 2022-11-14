namespace db;


using {BusinessPartnerService} from '../srv/service';


annotate BusinessPartnerService.BusinessPartners with @UI : {
    HeaderInfo       : {
        $Type          : 'UI.HeaderInfoType',
        TypeName       : 'BusinessPartners',
        TypeNamePlural : 'BusinessPartners',
    },
    SelectionFields  : [
        BusinessPartner,
        FirstName,
        LastName
    ],

    LineItem         : [
        {
            $Type : 'UI.DataField',
            Value : BusinessPartner,
        },
        {
            $Type : 'UI.DataField',
            Value : FirstName
        },
        {
            $Type : 'UI.DataField',
            Value : LastName,
        },

    ],
    Facets           : [{
        $Type  : 'UI.CollectionFacet',
        Label  : 'Business Partner Info',
        Facets : [{
            $Type  : 'UI.ReferenceFacet',
            Target : '@UI.FieldGroup#Main',
            Label  : 'Main'
        },


        ]
    }, ],
    FieldGroup #Main : {
        $Type : 'UI.FieldGroupType',
        Data  : [
            {
                $Type : 'UI.DataField',
                Value : BusinessPartner,
            },
            {
                $Type : 'UI.DataField',
                Value : FirstName,
            },
            {
                $Type : 'UI.DataField',
                Value : LastName,
            },

        ]
    },


};

annotate BusinessPartnerService.BusinessPartners with {
    BusinessPartner @title : 'ID';
    FirstName       @title : 'FirstName';
    LastName        @title : 'LastName';
};
