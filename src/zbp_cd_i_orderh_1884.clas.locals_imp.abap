CLASS lhc_ZCD_I_ORDERH_1884 DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR zcd_i_orderh_1884 RESULT result.
    METHODS get_instance_features FOR INSTANCE FEATURES
      IMPORTING keys REQUEST requested_features FOR header RESULT result.

    METHODS createtravelbytemplate FOR MODIFY
      IMPORTING keys FOR ACTION header~createtravelbytemplate RESULT result.

    METHODS validatestatus FOR VALIDATE ON SAVE
      IMPORTING keys FOR header~validatestatus.

ENDCLASS.

CLASS lhc_ZCD_I_ORDERH_1884 IMPLEMENTATION.

  METHOD get_instance_authorizations.
  ENDMETHOD.

  METHOD get_instance_features.
  ENDMETHOD.

  METHOD createTravelByTemplate.
  ENDMETHOD.

  METHOD validatestatus.
  ENDMETHOD.

ENDCLASS.
