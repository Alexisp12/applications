pack= Packages.register
  name: 'voicecontrol'
  description: 'Commands to switch between Siri, Dragon..'

pack.commands
  'siri':
    spoken: 'speaktosiri'
    grammarType: 'individual'
    description: 'to launch Siri'
    action: ->
      @do 'dragon_darwin:microphone-sleep'
      @applescript """
      tell application "Finder"
        activate
        open application file "Siri" of folder "Applications" of startup disk
      end tell
      """, false

Settings.vocabulary =
vocabulary: [
  "speaktosiri"
  "siri"
]

Settings.vocabulary =
 vocabularyAlternate:
  "speak to siri": "speaktosiri"
