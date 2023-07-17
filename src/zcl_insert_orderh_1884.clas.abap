CLASS zcl_insert_orderh_1884 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_insert_orderh_1884 IMPLEMENTATION.
   METHOD if_oo_adt_classrun~main.
       data : it_orderheader type TABLE OF ztsorderh_1884.
      it_orderheader = VALUE #(
         ( client  = '400' idsales = '1' email = 'rcollar0@oaic.gov.au' firstname = 'Raimund' lastname = 'Collar' country = 'Austria'
          createon = '20230101'  deliverydate =  '20230101'  orderstatus =  '1' imageurl = 'http://dummyimage.com/113x100.png/5fa2dd/ffffff' )
         ( client  = '400' idsales = '2' email = 'wnorree1@mapquest.com' firstname = 'Waldon' lastname = 'Norree' country = 'Austria'
         createon =  '20230201'   deliverydate =  '20230201' orderstatus =  '2' imageurl = 'http://dummyimage.com/124x100.png/dddddd/000000' )
           ( client  = '400' idsales = '3' email = 'yburgh2@dell.com' firstname = 'Yvette' lastname = 'Burgh' country = 'Austria'
         createon = '20230201'  deliverydate =  '20230201'  orderstatus =  '3' imageurl = 'http://dummyimage.com/132x100.png/ff4444/ffffff' )
           ( client  = '400' idsales = '4' email = 'fottley3@usnews.com' firstname = 'Frans' lastname = 'Ottley' country = 'Austria'
          createon = '20230201' deliverydate = '20230201' orderstatus =  '1'  imageurl = 'http://dummyimage.com/183x100.png/5fa2dd/ffffff' )
           ( client  = '400' idsales = '5' email = 'fcockson4@newyorker.com' firstname = 'Freida' lastname = 'Cockson' country = 'Austria'
         createon = '20230301'  deliverydate = '20230301' orderstatus =  '2' imageurl = 'http://dummyimage.com/107x100.png/dddddd/000000' )
     ).
*   Delete the possible entries in the database table - in case it was already filled
    DELETE FROM ztsorderh_1884.
*   insert the new table entries
    INSERT ztsorderh_1884 FROM TABLE @it_orderheader.

*   check the result
    SELECT * FROM ztsorderh_1884 INTO TABLE @it_orderheader.
    out->write( sy-dbcnt ).
    out->write( 'data inserted successfully!' ).

  ENDMETHOD.

ENDCLASS.
