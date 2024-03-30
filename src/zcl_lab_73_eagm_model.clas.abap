CLASS zcl_lab_73_eagm_model DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .


  PUBLIC SECTION.
    METHODS:
      get_flights IMPORTING iv_flights_id     TYPE /dmo/carrier_id
                  RETURNING VALUE(rt_flights) TYPE /dmo/t_flight.

  PROTECTED SECTION.
  PRIVATE SECTION.


ENDCLASS.



CLASS zcl_lab_73_eagm_model IMPLEMENTATION.

  METHOD get_flights.

    SELECT *
     FROM /dmo/flight
     WHERE carrier_id = @iv_flights_id
     INTO TABLE @rt_flights.

  ENDMETHOD.

ENDCLASS.
