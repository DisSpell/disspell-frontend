import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "timestamp" ]

  connect() {
    // do something when the controller connects
  }

  jumpToThisTime(event) {
    // grab the initial timestamp
    var timestamp = this.timestampTarget
    // Grab custom video player element
    const video_player = document.getElementsByTagName('youtube-video-wrapper')[0]
    // Split to get the start of the timestamp
    var time = this.toSeconds(timestamp.innerText.split("-->")[0]);
    // Call custom element's method to jump to specific time
    video_player.jumpToThisTime(time);  
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
