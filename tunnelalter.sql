ALTER TABLE tb_server_info ADD FOREIGN KEY ("devicetypeid") REFERENCES tb_device_types ("devicetypeid");

ALTER TABLE tb_devices ADD FOREIGN KEY ("tunnelid") REFERENCES tb_tunnels ("tunnelid");
ALTER TABLE tb_devices ADD FOREIGN KEY ("devicetypeid") REFERENCES tb_device_types ("devicetypeid");

ALTER TABLE tb_robot_env_data ADD FOREIGN KEY ("tunnelid") REFERENCES tb_tunnels ("tunnelid");

ALTER TABLE tb_robot_status_data ADD FOREIGN KEY ("tunnelid") REFERENCES tb_tunnels ("tunnelid");


ALTER TABLE tb_events ADD FOREIGN KEY ("tunnelid") REFERENCES tb_tunnels ("tunnelid");
ALTER TABLE tb_events ADD FOREIGN KEY ("devicetypeid") REFERENCES tb_device_types ("devicetypeid");


ALTER TABLE tb_situation ADD FOREIGN KEY ("tunnelid") REFERENCES tb_tunnels ("tunnelid");


ALTER TABLE tb_situation ADD FOREIGN KEY ("situid") REFERENCES tb_situation ("situid");
ALTER TABLE tb_situation ADD FOREIGN KEY ("tunnelid") REFERENCES tb_tunnels ("tunnelid");



ALTER TABLE tb_noti ADD FOREIGN KEY ("situid") REFERENCES tb_situation ("situid");
ALTER TABLE tb_noti ADD FOREIGN KEY ("tunnelid") REFERENCES tb_tunnels ("tunnelid");


ALTER TABLE tb_device_health_history ADD FOREIGN KEY ("tunnelid") REFERENCES tb_tunnels ("tunnelid");
ALTER TABLE tb_device_health_history ADD FOREIGN KEY ("devicetypeid") REFERENCES tb_device_types ("devicetypeid");


ALTER TABLE tb_device_health_status ADD FOREIGN KEY ("tunnelid") REFERENCES tb_tunnels ("tunnelid");
ALTER TABLE tb_device_health_status ADD FOREIGN KEY ("devicetypeid") REFERENCES tb_device_types ("devicetypeid");



ALTER TABLE tb_situation_reports ADD FOREIGN KEY ("situid") REFERENCES tb_situation ("situid");
ALTER TABLE tb_situation_reports ADD FOREIGN KEY ("notiid") REFERENCES tb_noti ("notiid");


ALTER TABLE tb_robots ADD FOREIGN KEY ("deviceid") REFERENCES tb_devices ("deviceid");
ALTER TABLE tb_robots ADD FOREIGN KEY ("tunnelid") REFERENCES tb_tunnels ("tunnelid");
