class WallpaperSlide

	def initialize(folder)
		load_wallpapers_in folder
	end

	def change_wallpaper
		if @files.empty?
			puts "Wallpapers not found in '#{@path}'. Maybe the path is wrong. It has to be ended it with a slash '/'."
			return
		end

		picture = random_picture
		puts picture
		system "gsettings set org.gnome.desktop.background picture-uri #{picture}"
	end

	private

	def load_wallpapers_in(folder)
		@path = folder || "#{File.dirname(__FILE__)}/pictures/"
		@files = Dir["#{@path}*.{jpg,png}"]
	end

	def random_picture
		idx = rand(1..@files.length)
		return @files[idx-1]
	end

end


options = Hash.new
ARGV.each { |arg| options.merge!( Hash[ [ arg.split("=") ] ] )}

folder = options["--folder"]
time = options["--time"] || 3600

app = WallpaperSlide.new folder

loop do
	app.change_wallpaper
	sleep time.to_i
end
