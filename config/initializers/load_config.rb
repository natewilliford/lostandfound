yaml_data = ERB.new(open("#{Rails.root.to_s}/config/app_config.yml").read).result
yaml_dict = YAML.load(yaml_data)

APP_CONFIG = (yaml_dict['defaults'].merge(yaml_dict[Rails.env] || {})).with_indifferent_access
