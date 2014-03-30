--
-- Tabella dei file estratti da ftp-data
--
CREATE TABLE IF NOT EXISTS ftp_files (
  id INTEGER NOT NULL PRIMARY KEY,
  sol_id INTEGER NOT NULL REFERENCES sols(id) ON DELETE CASCADE ON UPDATE CASCADE,
  pol_id INTEGER NOT NULL REFERENCES pols(id) ON DELETE CASCADE ON UPDATE CASCADE,
  source_id INTEGER NOT NULL REFERENCES sources(id) ON DELETE CASCADE ON UPDATE CASCADE,
  capture_date TIMESTAMP NOT NULL DEFAULT '1990-01-01 00:00:00',
  decoding_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  viewed_date TIMESTAMP NOT NULL DEFAULT '1990-01-01 00:00:00',
  ftp_id INTEGER NOT NULL REFERENCES ftps(id) ON DELETE CASCADE ON UPDATE CASCADE,
  first_visualization_user_id INTEGER,
  flow_info VARCHAR( 255 ) NOT NULL,
  filename VARCHAR( 255 ),
  file_path VARCHAR( 255 ),
  file_size INTEGER,
  file_percentual INTEGER DEFAULT 100,
  info_part VARCHAR( 255 ),
  dowloaded INTEGER,
  hole INTEGER DEFAULT 0,
  complete INTEGER DEFAULT 1
);
