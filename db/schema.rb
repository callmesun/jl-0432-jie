# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120810033135) do

  create_table "dict_entry", :primary_key => "DICTID", :force => true do |t|
    t.string  "DICTTYPECODE", :limit => 8,                                 :null => false
    t.string  "DICTCODE",     :limit => 8,                                 :null => false
    t.string  "DICTNAME",     :limit => 100,                               :null => false
    t.decimal "STATUS",                      :precision => 8, :scale => 0, :null => false
    t.decimal "PARENTID",                    :precision => 8, :scale => 0
    t.string  "REMARK"
  end

  add_index "dict_entry", ["DICTTYPECODE", "DICTCODE"], :name => "IDX_DICT_ENTRY", :unique => true

  create_table "dict_type", :id => false, :force => true do |t|
    t.decimal "DICTTYPEID",                     :precision => 8, :scale => 0, :null => false
    t.string  "DICTTYPENAME",    :limit => 100,                               :null => false
    t.string  "DICTTYPECODE",    :limit => 8,                                 :null => false
    t.decimal "DICTTYPESTATUS",                 :precision => 8, :scale => 0
    t.decimal "PARENTID",                       :precision => 8, :scale => 0
    t.decimal "ISDISPLAY",                      :precision => 8, :scale => 0
    t.decimal "DISPLAYORDER",                   :precision => 8, :scale => 0
    t.decimal "DICT_TYPE_LEVEL",                :precision => 8, :scale => 0
    t.decimal "ISLEAF",                         :precision => 8, :scale => 0
    t.string  "REMAKR",          :limit => 200
  end

  create_table "posts", :force => true do |t|
    t.string   "name"
    t.string   "title"
    t.text     "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "t_date_authorize", :primary_key => "DATA_AUTH_ID", :force => true do |t|
    t.string "FUN_URL",   :limit => 128
    t.string "AUTH_CODE", :limit => 8,   :null => false
    t.string "AUTH_NAME", :limit => 32,  :null => false
  end

  create_table "t_login_log", :primary_key => "LOG_ID", :force => true do |t|
    t.string  "USER_ID",        :limit => 128
    t.string  "USER_NAME",      :limit => 12
    t.string  "LOGIN_TIME",     :limit => 19
    t.string  "LOGOUT_TIME",    :limit => 19
    t.string  "SESSION_ID",     :limit => 256
    t.decimal "OPERATE_RESULT",                :precision => 8, :scale => 0
  end

  create_table "t_menu", :primary_key => "MENUID", :force => true do |t|
    t.string  "MENUNAME",     :limit => 40
    t.string  "MENULABEL",    :limit => 40
    t.string  "MENUCODE",     :limit => 40
    t.decimal "ISLEAF",                      :precision => 8, :scale => 0
    t.string  "MENUACTION",   :limit => 256
    t.string  "PARAMETER",    :limit => 256
    t.decimal "MENULEVEL",                   :precision => 8, :scale => 0
    t.decimal "ROOTID",                      :precision => 8, :scale => 0
    t.decimal "PARENTSID",                   :precision => 8, :scale => 0
    t.decimal "DISPLAYORDER",                :precision => 8, :scale => 0
    t.decimal "ISDISPLAY",                   :precision => 8, :scale => 0
    t.string  "IMAGEPATH",    :limit => 256
    t.string  "MENUSEQ",      :limit => 256
    t.string  "FUNCCODE",     :limit => 256
  end

  create_table "t_operate_log", :primary_key => "LOG_ID", :force => true do |t|
    t.string  "USER_ID",         :limit => 128
    t.string  "USER_NAME",       :limit => 12
    t.string  "OPERATE_TIME",    :limit => 19
    t.string  "OPERATE_TYPE",    :limit => 8
    t.string  "OPERATE_CONTENT", :limit => 512
    t.string  "SESSION_ID",      :limit => 256
    t.decimal "OPERATE_RESULT",                 :precision => 8, :scale => 0
    t.string  "IPADDRESS",       :limit => 15
  end

  create_table "t_operator", :primary_key => "OPERATORID", :force => true do |t|
    t.string   "ORG_CODE",         :limit => 12
    t.string   "DISTRICT_CODE",    :limit => 8
    t.string   "USERID",           :limit => 64,                                :null => false
    t.string   "PASSWORD",         :limit => 64,                                :null => false
    t.datetime "INVALDATE"
    t.string   "OPERATORNAME",     :limit => 64,                                :null => false
    t.decimal  "GENDER",                          :precision => 8, :scale => 0, :null => false
    t.decimal  "AGE",                             :precision => 8, :scale => 0
    t.decimal  "NATION",                          :precision => 8, :scale => 0
    t.decimal  "CERTIFICATE_TYPE",                :precision => 8, :scale => 0
    t.string   "CERTIFICATE_NUM",  :limit => 32
    t.string   "AUTHMODE"
    t.decimal  "STATUS",                          :precision => 8, :scale => 0
    t.datetime "UNLOCKTIME"
    t.datetime "LASTLOGIN"
    t.decimal  "ERRCOUNT",                        :precision => 8, :scale => 0
    t.datetime "STARTDATE"
    t.datetime "ENDDATE"
    t.string   "IPADDRESS",        :limit => 128
    t.string   "EMAIL"
    t.string   "REMARK"
  end

  add_index "t_operator", ["USERID"], :name => "IDX_T_OPERATOR_UID", :unique => true

  create_table "t_org", :primary_key => "ORG_ID", :force => true do |t|
    t.decimal "PARENT_ORG_ID",                :precision => 8, :scale => 0
    t.string  "ORG_NAME",      :limit => 128,                               :null => false
    t.string  "ORG_CODE",      :limit => 12,                                :null => false
    t.string  "ORG_ADDRESS",   :limit => 256
    t.string  "ORG_SEQ",       :limit => 64
    t.decimal "ORG_LEVEL",                    :precision => 8, :scale => 0
    t.decimal "ISLEAF",                       :precision => 8, :scale => 0
    t.decimal "ISDISPLAY",                    :precision => 8, :scale => 0
    t.decimal "DISPLAYORDER",                 :precision => 8, :scale => 0
    t.string  "REMARK",        :limit => 256
  end

  add_index "t_org", ["ORG_CODE"], :name => "IDX_ORG_CODE", :unique => true

  create_table "t_role", :primary_key => "ROLE_ID", :force => true do |t|
    t.string "ROLE_NAME", :limit => 32
    t.string "ROLE_CODE", :limit => 32
    t.string "ROLE_DESC", :limit => 256
  end

  add_index "t_role", ["ROLE_CODE"], :name => "IDX_T_ROLE_CODE", :unique => true

  create_table "t_role_dataauth", :id => false, :force => true do |t|
    t.decimal "DATA_AUTH_ID", :precision => 8, :scale => 0
    t.decimal "ROLE_ID",      :precision => 8, :scale => 0
  end

  add_index "t_role_dataauth", ["DATA_AUTH_ID"], :name => "FK_T_ROLE_D_REFERENCE_T_DATE_A"
  add_index "t_role_dataauth", ["ROLE_ID"], :name => "FK_T_ROLE_D_REFERENCE_T_ROLE"

  create_table "t_role_logtype", :id => false, :force => true do |t|
    t.decimal "ROLE_ID",     :precision => 8, :scale => 0
    t.decimal "LOG_TYPE_ID", :precision => 8, :scale => 0
  end

  add_index "t_role_logtype", ["ROLE_ID"], :name => "FK_T_ROLE_L_REFERENCE_T_ROLE"

  create_table "t_role_menu", :id => false, :force => true do |t|
    t.decimal "ROLE_ID", :precision => 8, :scale => 0
    t.decimal "MENUID",  :precision => 8, :scale => 0
  end

  add_index "t_role_menu", ["MENUID"], :name => "FK_T_ROLE_M_REFERENCE_T_MENU"
  add_index "t_role_menu", ["ROLE_ID"], :name => "FK_T_ROLE_M_REFERENCE_T_ROLE"

  create_table "t_role_user", :id => false, :force => true do |t|
    t.decimal "ROLE_ID",    :precision => 8, :scale => 0
    t.decimal "OPERATORID", :precision => 8, :scale => 0
  end

  add_index "t_role_user", ["OPERATORID"], :name => "FK_T_ROLE_U_REFERENCE_T_OPERAT"
  add_index "t_role_user", ["ROLE_ID"], :name => "FK_T_ROLE_U_REFERENCE_T_ROLE"

  create_table "t_share_comment", :primary_key => "ID", :force => true do |t|
    t.string "COMMENT", :limit => 256
    t.string "USER_ID", :limit => 64
  end

  add_index "t_share_comment", ["USER_ID"], :name => "FK_REFERENCE_11"

  create_table "t_share_forward", :primary_key => "ID", :force => true do |t|
    t.string "FORWORD_TO", :limit => 64,  :null => false
    t.string "USER_ID",    :limit => 64,  :null => false
    t.string "COMMENT",    :limit => 256
  end

  add_index "t_share_forward", ["USER_ID"], :name => "FK_REFERENCE_10"

  create_table "t_share_rec_pic", :primary_key => "ID", :force => true do |t|
    t.string  "PIC_URL",  :limit => 128
    t.integer "SHARE_ID"
  end

  add_index "t_share_rec_pic", ["SHARE_ID"], :name => "FK_REFERENCE_8"

  create_table "t_share_record", :primary_key => "ID", :force => true do |t|
    t.string  "USER_ID",         :limit => 64
    t.string  "SHARE_TITLE",     :limit => 256
    t.string  "SHARE_TYPE_CODE", :limit => 8
    t.string  "SHARE_TEXT",      :limit => 2000
    t.integer "LIKE_COUNT"
    t.integer "FORWARD_COUNT"
    t.integer "SHARE_POINTS"
    t.decimal "FEE",                             :precision => 8, :scale => 0
  end

  add_index "t_share_record", ["USER_ID"], :name => "FK_REFERENCE_9"

  create_table "t_share_type", :primary_key => "ID", :force => true do |t|
    t.string  "TYPE_CODE",    :limit => 8
    t.string  "TYPE_NAME",    :limit => 64
    t.string  "TYPE_DESC",    :limit => 128
    t.integer "PID"
    t.integer "ISLEAF",                      :default => 1
    t.integer "ISDISPLAY"
    t.integer "DISPLAYORDER"
  end

  add_index "t_share_type", ["TYPE_CODE"], :name => "IDX_SHARE_CODE", :unique => true

  create_table "t_user_realation", :primary_key => "ID", :force => true do |t|
    t.integer "USER_ID"
    t.integer "OPERATE_USER_ID"
    t.integer "STATUS"
  end

  create_table "test", :primary_key => "test", :force => true do |t|
  end

  create_table "u_sequences", :primary_key => "S_ID", :force => true do |t|
    t.decimal "S_NEXTNUM", :precision => 8, :scale => 0
  end

end
