import { LitElement, html, css } from 'lit';

class TranscriptWrapper extends LitElement {
  static styles = css`
  `;

  static properties = {
    query: { type: String },
  };

  constructor() {
    super()
  }

  // createRenderRoot() {
  //   return this;
  // }

  jumpToThisTime(event) { 
    var timestamp = event.target.previousElementSibling; 
    var time = toSeconds(timestamp.innerText.split(""))
    player.seekTo(time);  
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
    return Math.round(total); 
  } 
  
  render() {
    return html `
      <slot></slot>
    `;
  }
}
customElements.define('transcript-wrapper', TranscriptWrapper)
