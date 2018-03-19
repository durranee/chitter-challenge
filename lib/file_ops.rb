class FileOps

  def self.save_photo(username, filename, file)
    filename = "#{username}.#{filename.partition('.').last}"
    File.open("./Public/profiles/#{filename}", 'wb') do |f|
      f.write(file.read)
    end
  end

  def remove_file(file)
    File.delete(file)
  end
end
