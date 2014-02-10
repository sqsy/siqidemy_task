require 'siqidemy_task/version'
require 'siqidemy_task/engine' if defined?(Rails) && (!Rails.env.test?)

I18n.load_path << "#{File.dirname(__FILE__)}/siqidemy_task/locale/en.yml"