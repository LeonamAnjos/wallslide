# WallSlide
WallSlide is a script that changes gnome wallpaper every time you chouse. 

__Important:__ only _"jpg"_ and _"png"_ extensions are supported.

## Installation
You can clone this repo or just download the files. Than, just start the job.
```sh
$ git clone http://...
```
## Usage
The simplest way is coping your wallpapers into ./pictures/ folder and start the job without args. Wallpaper will be changed every hour.
```sh
$ cd wallslide/
$ cp ~/Pictures/*.jpg ./pictures/
$ ./wallslide start
```
You can choose the change frequency in seconds. For example, if you want to change the wallpaper every 30 seconds:
```sh
$ ./wallslide start -- --time=30
```
And you can choose an other folder to collect pictures, as below:
```sh
$ ./wallslide start -- --folder=/my/pictures/folder/
```
And if you want stop the job...
```sh
$ ./wallslide stop
```

##### Enjoy yourself!!!