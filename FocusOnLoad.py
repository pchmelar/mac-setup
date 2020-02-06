import sublime
import sublime_plugin
import os

cmd = '''
tell application \\"System Events\\"
    tell application process \\"Sublime Text\\"
        set frontmost to true
    end tell
end tell
'''

class FocusOnLoad (sublime_plugin.EventListener):
    def on_load(self, view):
        os.system('osascript -e "{0}"'.format(cmd))
