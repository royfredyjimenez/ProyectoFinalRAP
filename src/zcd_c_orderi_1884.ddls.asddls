@EndUserText.label: 'Vista de Consumo Sales Order Items'
@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
define view entity ZCD_C_ORDERI_1884 as projection on ZCD_I_ORDERI_1884 {
  key Idsales as Idsales,
    key Iditsord as Iditsord,
    Name as Name,
    Description as Description,
    Releasedate as Releasedate ,
    Discontinueddate as  Discontinueddate ,
    Price as  Price,
    Height as Height,
    Width as Width,
    Depth as Depth ,
    Quantity as Quantity,
    Unitofmeasure as Unitofmeasure,
    /* Associations */
    _header : redirected to parent ZCD_C_ORDERH_1884
}
