CREATE TABLE public.tb_server_info (
  "deviceid" character varying(14) not null PRIMARY KEY,
  "servername" character varying(100) not null,
  "serverip" character varying(50) not null,
  "serverport" integer not null,
  "devicetypeid" character varying(10) not null,
  "state" character varying(4) not null
);

CREATE TABLE public.tb_tunnels (
  "tunnelid" integer not null PRIMARY KEY,
  "name" character varying(20) not null,
  "namekor" character varying(20) not null,
  "length" real not null
);

CREATE TABLE public.tb_device_types (
  "devicetypeid" character varying(10) not null PRIMARY KEY,
  "name" character varying(20) not null,
  "namekor" character varying(20) not null
);


CREATE TABLE public.tb_devices (
  "deviceid" character varying(10) not null PRIMARY KEY,
  "devicetypeid" character varying(10) not null,
  "tunnelid" integer not null,
  "deviceno" integer not null
);



CREATE TABLE public.tb_robot_sensors (
  "sensorid" character varying(2) not null PRIMARY KEY,
  "name" character varying(20) not null,
  "namekor" character varying(20) not null,
  "unit"character varying(10) not null

);

CREATE TABLE public.tb_robot_env_data (
  "seq" SERIAL not null PRIMARY KEY,
  "tunnelid" integer not null,
  "deviceno" integer not null ,
  "timestamp" timestamp without time zone not null,
  "data" character varying(256) not null

);

CREATE TABLE public.tb_robot_status_data (
  "seq" SERIAL not null PRIMARY KEY,
  "tunnelid" integer not null,
  "deviceno" integer not null ,
  "timestamp" timestamp without time zone not null,
  "data" character varying(256) not null
);


CREATE TABLE public.tb_events(
  "eventid" integer not null PRIMARY KEY,
  "tunnelid" integer not null,
  "deviceno" integer not null,
  "devicetypeid" character varying(10) not null,
  "eventtype" character varying(10) not null,
  "timestamp" timestamp without time zone not null,
  "position" real,
  "data" character varying(256)
);


CREATE TABLE public.tb_situation(
  "situid" SERIAL not null PRIMARY KEY,
  "tunnelid" integer not null,
  "devices" character varying(64) not null,
  "timebegin" timestamp without time zone not null,
  "timeupdate" timestamp without time zone,
  "timeend" timestamp without time zone,
  "situtype"  character varying(14) not null,
  "position" real not null,
  "events" character varying(256) not null
);


CREATE TABLE public.tb_situation_history(
  "seq" SERIAL not null PRIMARY KEY,
  "situid" integer not null,
  "tunnelid" integer not null,
  "devices"  character varying(64) not null,
  "timestamp" timestamp without time zone not null,
  "position" real not null,
  "events"  character varying(256) not null
);


CREATE TABLE public.tb_noti(
  "notiid" SERIAL not null PRIMARY KEY,
  "situid" integer not null,
  "tunnelid" integer not null,
  "devices"  character varying(64) not null,
  "timebegin" timestamp without time zone not null,
  "timeconfirm" timestamp without time zone,
  "situtype" character varying(14) not null,
  "notitype" character varying(14) not null,
  "position" real not null,
  "sms" character varying(256)
);


CREATE TABLE public.tb_device_health_history(
  "seq" SERIAL not null PRIMARY KEY,
  "devicetypeid" character varying(10) not null,
  "tunnelid" integer not null,
  "deviceno"  integer not null,
  "timebegin" timestamp without time zone not null,
  "timeend" timestamp without time zone
);



CREATE TABLE public.tb_device_health_status(
  "devicetypeid" character varying(10) not null,
  "tunnelid" integer not null,
  "deviceno"  integer not null,
  "timestamp" timestamp without time zone not null,
  "status" integer not null
);


CREATE TABLE public.tb_situation_reports(
  "seq" SERIAL not null PRIMARY KEY,
  "situid" integer not null,
  "notiid"  integer not null,
  "firstevents"  character varying(4) not null,
  "data"  character varying(14) not null,
  "timestamp" timestamp without time zone not null,
  "events" character varying(40)
);

CREATE TABLE public.tb_robots(
  "deviceid" character varying(14) not null PRIMARY KEY,
  "tunnelid" integer not null,
  "robotip"  character varying(50) not null,
  "robotport"  integer not null,
  "robotloca"  real not null,
  "robotlocz"  real not null,
  "thermalcamurl"  character varying(250) ,
  "opticalcamurl"  character varying(250)

);
