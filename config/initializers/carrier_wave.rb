 if Rails.env.production?
        CarrierWave.configure do |config|
        config.root = Rails.root.join('tmp')
        config.cache_dir = 'carrierwave'

        config.fog_credentials = {
          # Configuration for Amazon S3
          :provider               => 'AWS',                        # change var's name
          :aws_access_key_id      => ENV['S3_ACCESS_KEY'],         # change var's name
          :aws_secret_access_key  => ENV['S3_SECRETE_KEY']
        }
        config.fog_directory     =  ENV['S3_BUCKET']
      end
    end