ALTER schema public owner to postgres ; 

CREATE TABLE public.identification_groupe (
	"id_groupe" int NOT NULL,
	coordonnee_x float NOT NULL,
	coordonnee_y float NOT NULL,
	PRIMARY KEY ("id_groupe")
);

CREATE TABLE public.releve_ventilation(
	"esp_id" int  REFERENCES public.identification_groupe(id_groupe) NOT NULL ,
	"date" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
	"temperature" int NOT NULL,
	"co2" int NOT NULL,
	"hygrometrie" int NOT NULL,
	PRIMARY KEY ("esp_id")
);


ALTER TABLE public.releve_ventilation OWNER to vmotte;
ALTER TABLE public.identification_groupe OWNER to vmotte;
 

---\copy "identification_groupe" FROM './chemin_csv' WITH DELIMITER ','  ---
