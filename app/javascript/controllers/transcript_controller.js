import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "timestamp" ]

  connect() {
    // do something when the controller connects
  }

  get videoPlayer() {
    // This getter will always fetch the current 'youtube-video-wrapper' element
    return document.querySelector('youtube-video-wrapper');
  }

  jumpToThisTime(event) {
    // grab the initial timestamp
    var timestamp = this.timestampTarget
    // Split to get the start of the timestamp
    var time = this.toSeconds(timestamp.dataset.vttTimestamp.split("-->")[0]);
    // Call custom element's method to jump to specific time

    if (this.videoPlayer.isPlayerReady) { // Check if the player is ready
      this.videoPlayer.jumpToThisTime(time);
    } else {
      console.error('Player is not ready.'); // Log an error if the player is not ready
    }
  }

  toSeconds(time) { 
    // Split the time by the separators 
    var parts = time.split(/[:.]/); 
    // Get the hours, minutes, seconds, and milliseconds 
    var hours = parseInt(parts[0], 10); 
    var minutes = parseInt(parts[1], 10); 
    var seconds = parseInt(parts[2], 10); 
    var milliseconds = parseInt(parts[3], 10); 
    // Calculate the total seconds 
    var total = hours * 3600 + minutes * 60 + seconds + milliseconds / 1000; 
    // Return the result 
    return Math.floor(total); 
  } 
}
