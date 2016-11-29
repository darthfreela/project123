class Notification < ActiveRecord::Base
  '''
    Tabela que guarda as notificações do sistema
  '''
  # validates :description, presence: true
  # validates :title_notification, presence: true
  # validates :controller_description, presence: true
  # validates :action_description, presence: true
  # validates :status, presence: true

  # relacionamentos
  belongs_to :user
end

####################### campos existentes no banco ##########################
  # id integer NOT NULL DEFAULT nextval('notifications_id_seq'::regclass),
  # user_id integer,
  # description character varying,
  # title_notification character varying,
  # controller_description
  # action_description

  # date_expiration timestamp without time zone,
  # status integer,
  # created_at timestamp without time zone NOT NULL,
  # updated_at timestamp without time zone NOT NULL,
#################################################################
