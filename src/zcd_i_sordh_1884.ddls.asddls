@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Sales Order - Header'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZCD_I_SORDH_1884 as select from ztsorderh_1884 as header 
 composition [0..*] of ZCD_I_SORDI_1884 as _item  
  
{ 
    key idsales as Idsales,
email as Email,
firstname as Firstname,
lastname as Lastname,
country as Country,
createon as Createon,
deliverydate as Deliverydate,
orderstatus as Orderstatus,
imageurl as Imagenurl, 
  _item   
    
}
