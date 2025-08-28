CREATE ROLE Player_Gamer WITH
    LOGIN
    PASSWORD 'SuperMotDePasseSecu';


REVOKE CONNECT ON DATABASE postgres FROM Player_Gamer;
REVOKE CONNECT ON DATABASE template1 FROM Player_Gamer;

GRANT CONNECT ON DATABASE pawn_to_king TO Player_Gamer;

REVOKE ALL ON SCHEMA public FROM Player_Gamer;
GRANT USAGE ON SCHEMA public TO Player_Gamer;

GRANT SELECT, INSERT, UPDATE, DELETE
    ON ALL TABLES IN SCHEMA public
    TO Player_Gamer;

ALTER DEFAULT PRIVILEGES IN SCHEMA public
    GRANT SELECT, INSERT, UPDATE, DELETE ON TABLES
    TO Player_Gamer;


-- DROP ROLE IF EXISTS player_gamer;
