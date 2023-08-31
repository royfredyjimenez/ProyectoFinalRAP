CLASS zcl_insert_orderi_1884 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_INSERT_ORDERI_1884 IMPLEMENTATION.


   METHOD if_oo_adt_classrun~main.
*
      data : it_orderheaderi type TABLE OF ztsorderi_1884.
      it_orderheaderi = VALUE #(
     ( client  = '400' idsales = '1' iditsord = '1' name = 'Perita' description = 'Perita dulce' releasedate = '20230101'
       discontinueddate =  '20230101' price =  '450.8' height = '20' width =  '20' depth = '1.00' quantity = '20.00' imageurl = 'http://dummyimage.com/113x100.png/5fa2dd/ffffff' unitofmeasure = 'KG' )
     ( client  = '400' idsales = '2' iditsord = '1' name = 'Fresa' description = 'Fresa dulce' releasedate = '20230101'
       discontinueddate =   '20230101'  price =  '350.9' height = '20' width =  '20' depth = '1.00' quantity = '20.00' imageurl ='http://dummyimage.com/124x100.png/dddddd/000000' unitofmeasure = 'KG' )
    ( client  = '400' idsales = '3' iditsord = '2' name = 'Arreglo Florar' description = 'Arreglo floral color amarillo' releasedate = '20230101'
      discontinueddate =   '20230101'  price =  '350.9' height = '20' width =  '20' depth = '1.00' quantity = '20.00' imageurl = 'http://dummyimage.com/132x100.png/ff4444/ffffff' unitofmeasure = 'KG' )
    ( client  = '400' idsales = '4' iditsord = '2' name = 'Jasmines' description = 'Pack de Jasmines' releasedate = '20230101'
      discontinueddate =   '20230101'  price =  '360.9' height = '20' width =  '20' depth = '1.00' quantity = '20.00' imageurl = 'http://dummyimage.com/183x100.png/5fa2dd/ffffff' unitofmeasure = 'KG' )
    ( client  = '400' idsales = '5' iditsord = '1' name = 'Rosa' description = 'Pack de Rosas' releasedate = '20230101'
      discontinueddate =   '20230101'  price =  '380.9' height = '20' width =  '20' depth = '1.00' quantity = '20.00' imageurl = 'http://dummyimage.com/107x100.png/dddddd/000000' unitofmeasure = 'KG'  )
     ).
*
*   Delete the possible entries in the database table - in case it was already filled
    DELETE FROM ztsorderi_1884.
*   insert the new table entries
    INSERT ztsorderi_1884 FROM TABLE @it_orderheaderi.

*   check the result
    SELECT * FROM ztsorderi_1884 INTO TABLE @it_orderheaderi.
    out->write( sy-dbcnt ).
    out->write( 'data inserted successfully!' ).

  ENDMETHOD.
ENDCLASS.
