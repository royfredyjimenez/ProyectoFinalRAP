@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Vista de Consumo Sales Order Header'
@Metadata.allowExtensions: true
define root view entity ZCD_C_ORDERH_1884 provider contract transactional_query
as projection on ZCD_I_ORDERH_1884
  {
   key Idsales as Idsales,
    Email as Email,
    Firstname as Firstname,
    Lastname as Lastname,
    Country as Country,
    Createon as Createon,
    Deliverydate as Deliverydate ,
    Orderstatus as  Orderstatus,
    Imagenurl as Imagenurl,
    /* Associations */
     item:  redirected to composition child ZCD_C_ORDERI_1884 /* redirected to composition child */ 
    
}
