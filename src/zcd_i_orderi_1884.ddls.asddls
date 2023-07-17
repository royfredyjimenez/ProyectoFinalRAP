@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Sales Order - Items'
define view entity ZCD_I_ORDERI_1884 as select from ztsorderi_1884 as item  
association to parent ZCD_I_ORDERH_1884  as _header 
    on $projection.Idsales  = _header.Idsales {
    key idsales as Idsales,
    key iditsord as Iditsord,
    name as Name,
    description as Description,
    releasedate as Releasedate,
    discontinueddate as Discontinueddate,
    price as Price,
    @Semantics.quantity.unitOfMeasure: 'unitofmeasure'    
    height as Height,
    @Semantics.quantity.unitOfMeasure: 'unitofmeasure'
    width as Width,
    depth as Depth,
    quantity as Quantity,
    unitofmeasure as Unitofmeasure, 
    _header
}
