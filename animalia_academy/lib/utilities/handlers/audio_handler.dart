import "package:audioplayers/audioplayers.dart";


class AudioHandler{
  static Future<void> playAudio(String soundPath, double volume) async {
    final player = AudioPlayer();

    player.setVolume(volume);
    await player.play(AssetSource(soundPath.replaceFirst("assets/", "")));
  }
}
