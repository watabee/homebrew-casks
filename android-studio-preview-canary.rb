cask 'android-studio-preview-canary' do
  version '4.2.0.10,202.6811877'
  sha256 '8222060377a14cdc0461b2d3e31a0765c0fd924fc58053a0c00a227f9cbcea77'

  # dl.google.com/dl/android/studio/ was verified as official when first introduced to the cask
  url "https://dl.google.com/dl/android/studio/ide-zips/#{version.before_comma}/android-studio-ide-#{version.after_comma}-mac.zip"
  name 'Android Studio Preview (Canary)'
  homepage 'https://developer.android.com/studio/preview/'

  app "Android Studio #{version.major_minor} Preview.app"

  zap trash: [
               #'~/Library/Android/sdk',
               "~/Library/Application Support/Google/AndroidStudio#{version.major_minor}",
               "~/Library/Caches/Google/AndroidStudio#{version.major_minor}",
               "~/Library/Logs/Google/AndroidStudio#{version.major_minor}",
               #"~/Library/Preferences/AndroidStudio#{version.major_minor}",
               #'~/Library/Preferences/com.android.Emulator.plist',
               '~/Library/Saved Application State/com.google.android.studio-EAP.savedState',
               #'~/.android',
             ],
      rmdir: [
               #'~/AndroidStudioProjects',
               #'~/Library/Android',
             ]
end

