class LauncherUploader < CarrierWave::Uploader::Base
  storage :file
  def store_dir
    "#{Rails.root}/public/userfiles/"
  end

  def filename
      "#{Time.now.to_i.to_s + original_filename}" if original_filename
  end

end
