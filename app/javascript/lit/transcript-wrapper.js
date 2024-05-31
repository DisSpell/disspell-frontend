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

  handleSearchMount(e) {
    console.log('in search change', e.target.assignedElements({ flatten: true }))
    const slotElement = e.target.assignedElements({ flatten: true })[0]
    let searchCountElement = slotElement.querySelector('#searchCount')
    let searchInputElement = slotElement.querySelector('#searchValue')
    let prevButtonElement = slotElement.querySelector('#prevButton')
    let nextButtonElement = slotElement.querySelector('#nextButton')
    // console.log(slotElement, searchCountElement, searchInputElement, prevButtonElement, nextButtonElement)
  }

  handleTranscriptMount(e) {
    console.log('in transcript change', e)
    // this.addEventListener('click', (e) => console.log(e.type, e.target));
    this.addEventListener('click', (e) => {
      if ( e.target.dataset.vttTimestamp != undefined ) {
        this.jumpToThisTime(e.target.dataset.vttTimestamp)
      } else {
        this.jumpToThisTime(e.target.parentElement.dataset.vttTimestamp)
      }
    })
    // this.addEventListener('click', this.jumpToThisTime)
    const slotElement = e.target.assignedElements({ flatten: true })[0]
    let transcriptItemElement = slotElement.querySelectorAll('[data-event]')
    // console.log(transcriptItemElement)
  }

  jumpToThisTime(timestamp) { 
    // console.log('got into jumpToThisTime with this timestamp:', timestamp)
    var time = this.toSeconds(timestamp.split(" ")[0])
    // console.log('time:', time)

    // send custom event to be picked up by yt-wrapper webcomponent
    const changePlayerTime = new CustomEvent('changePlayerTime', {
      detail: { message: time },
      bubbles: true,
      composed: true
    });
    this.dispatchEvent(changePlayerTime);
    console.log('sent event', changePlayerTime)
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
      <slot name="search" @slotchange=${this.handleSearchMount}></slot>
      <slot name="transcript" @slotchange=${this.handleTranscriptMount}></slot>
    `;
  }
}
customElements.define('transcript-wrapper', TranscriptWrapper)
