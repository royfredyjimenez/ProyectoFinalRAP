@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Sales Order - Header'
define root view entity ZCD_I_ORDERH_1884 as  select from ztsorderh_1884  as header
  composition [0..*] of ZCD_I_ORDERI_1884 as item
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
 item
}
