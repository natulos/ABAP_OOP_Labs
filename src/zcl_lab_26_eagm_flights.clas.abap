CLASS zcl_lab_26_eagm_flights DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES:
      zif_lab_eagm_01_flight,
      zif_lab_eagm_02_customer.

    ALIASES:
        set_conn_id  FOR zif_lab_eagm_01_flight~set_conn_id,
        get_conn_id  FOR zif_lab_eagm_01_flight~get_conn_id,
        get_customer FOR zif_lab_eagm_02_customer~get_customer,
        get_airports FOR zif_lab_eagm_03_airports~get_airports.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_LAB_26_EAGM_FLIGHTS IMPLEMENTATION.


  METHOD zif_lab_eagm_01_flight~set_conn_id.
    zif_lab_eagm_01_flight~conn_id = iv_conn_id.
  ENDMETHOD.


  METHOD zif_lab_eagm_01_flight~get_conn_id.
    rv_conn_id = me->zif_lab_eagm_01_flight~conn_id.
  ENDMETHOD.


  METHOD zif_lab_eagm_02_customer~get_customer.

    SELECT SINGLE first_name, last_name
        FROM /dmo/customer
        WHERE customer_id = @iv_customer_id
        INTO (@rv_cust_address-first_name, @rv_cust_address-last_name).

  ENDMETHOD.


  METHOD zif_lab_eagm_03_airports~get_airports.
    SELECT SINGLE *
        FROM /dmo/airport
        WHERE airport_id = @iv_airport_id
        INTO @rv_airport.

  ENDMETHOD.
ENDCLASS.
