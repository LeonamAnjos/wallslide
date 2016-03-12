class WallpaperSlide

	def initialize(path)
		load_wallpapers_in path
	end

	def load_wallpapers_in(path)
		@files = Dir["#{path}*.{jpg,png}"]
	end

	def random_picture
		idx = rand(1..@files.length)
		return @files[idx-1]
	end

	def change_wallpaper
		if @files.empty?
			puts 'Wallpapers not found! Maybe the path is wrong. Finish it with a slash "/".'
			return
		end

		picture = random_picture
		puts picture
		system "gsettings set org.gnome.desktop.background picture-uri #{picture}"
	end
end

app = WallpaperSlide.new ARGV[0]

loop do
	app.change_wallpaper
	sleep 3600
end
