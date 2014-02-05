CREATE SEQUENCE blip_seq;
CREATE SEQUENCE session_seq;

CREATE TABLE blip_tbl (
	id BIGINT NOT NULL DEFAULT NEXTVAL( 'blip_seq' ),
	key VARCHAR(2048) NOT NULL,
    identifier VARCHAR(2048),
	timestamp TIMESTAMP NOT NULL DEFAULT NOW(),
	CONSTRAINT blip_pk PRIMARY KEY ( id ),
    CONSTRAINT blip_unq UNIQUE ( key, identifier, timestamp ) );

CREATE TABLE session_tbl (
	id BIGINT NOT NULL DEFAULT NEXTVAL( 'blip_seq' ),
	key VARCHAR(2048) NOT NULL,
	uid VARCHAR(2048) NOT NULL,
	timestamp TIMESTAMP NOT NULL DEFAULT NOW(),
    ip VARCHAR(2048),
	CONSTRAINT blip_pk PRIMARY KEY ( id ) );
