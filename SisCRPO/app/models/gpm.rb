class Gpm < ActiveRecord::Base

validates :initials, :name, presence: true


end

# id integer NOT NULL DEFAULT nextval('gpms_id_seq'::regclass),
#   initials character varying,
#   name character varying,
#   actived boolean,
#   city_id integer,
#   platoon_id integer,
#   companies_id integer,
