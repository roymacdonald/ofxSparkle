# All variables and this file are optional, if they are not present the PG and the
# makefiles will try to parse the correct values from the file system.
#
# Variables that specify exclusions can use % as a wildcard to specify that anything in
# that position will match. A partial path can also be specified to, for example, exclude
# a whole folder from the parsed paths from the file system
#
# Variables can be specified using = or +=
# = will clear the contents of that variable both specified from the file or the ones parsed
# from the file system
# += will add the values to the previous ones in the file or the ones parsed from the file 
# system
# 
# The PG can be used to detect errors in this file, just create a new project with this addon 
# and the PG will write to the console the kind of error and in which line it is

meta:
	ADDON_NAME = ofxSparkle
	ADDON_DESCRIPTION = Addon for Sparkle framework in OF 
	ADDON_AUTHOR = @roymacdonald
	ADDON_TAGS = "addon" "sparkle" "sparkle project"
	ADDON_URL = http://github.com/roymacdonald/ofxSparkle


common:
	# dependencies with other addons, a list of them separated by spaces 
	# 	ADDON_DEPENDENCIES = ofxMainMenu
	
	ADDON_CFLAGS = -F$(OF_ROOT)/addons/ofxSparkle/libs/Sparkle/lib/osx/
	ADDON_LDFLAGS = -F$(OF_ROOT)/addons/ofxSparkle/libs/Sparkle/lib/osx/ -framework Sparkle
	ADDON_LDFLAGS += -Wl,-rpath,@loader_path/../Frameworks


	# Enable the following line and dissable the 	
	# ADDON_LDFLAGS += -Wl,-rpath,@loader_path/../Resources/data/Frameworks
	
	# This is a bit of a hack to add the framework into the app bundle when using make
	# ADDON_DATA = Sparkle-2.7.0/data/Frameworks
