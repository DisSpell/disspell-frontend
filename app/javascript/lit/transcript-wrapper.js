import { LitElement, html, css } from 'lit';

class TranscriptWrapper extends LitElement {
  static styles = css`
  `;

  static properties = {
    query: { type: String },
    count: { type: Number },
  };

  constructor() {
    super()
    this.count = 1

    this.handleNextButton = this.handleNextButton.bind(this)
    this.handlePrevButton = this.handlePrevButton.bind(this)
    this.totalSearchResults = this.totalSearchResults.bind(this)
  }

  totalSearchResults() {
    let searchCountElement = this.querySelector('#searchCount')

    let total = this.querySelectorAll('mark').length
    searchCountElement.innerText = this.count + '/' + total
  }

  handleSearchMount(e) {
    // console.log('in search change', e.target.assignedElements({ flatten: true }))
    this.totalSearchResults()
    const slotElement = e.target.assignedElements({ flatten: true })[0]
    let searchInputElement = slotElement.querySelector('#searchValue')
    this.query = searchInputElement.value
    let searchButtonElements = slotElement.querySelector('#searchButtons')
    searchButtonElements.children.nextButton.addEventListener('click', this.handleNextButton)
    searchButtonElements.children.prevButton.addEventListener('click', this.handlePrevButton)
  }

  handleNextButton(e) {
    let searchElements = this.querySelectorAll('mark')
    let currentElement = searchElements[this.count - 1]

    if ( (this.count + 1) < searchElements.length ) {
      this.scrollToSearchItem(searchElements[this.count])
      this.count += 1
    } else {
      this.scrollToSearchItem(searchElements[0])
      this.count = 1
    }

    // remove previous item's visual css indication
    currentElement.parentElement.style.cssText = ""
    
    // update visible search count
    this.totalSearchResults()
  }

  handlePrevButton(e) {
    let searchElements = this.querySelectorAll('mark')
    let currentElement = searchElements[this.count - 1]

    if ( (this.count - 1) > 0 ) {
      this.count -= 1
      this.scrollToSearchItem(searchElements[this.count - 1])
    } else {
      this.scrollToSearchItem(searchElements[searchElements.length - 1])
      this.count = searchElements.length
    }

    // remove previous item's visual css indication
    currentElement.parentElement.style.cssText = ""

    //update visible search count
    this.totalSearchResults()
  }

  scrollToSearchItem(item) {
    let originalScrollPosition = this.scrollTop
    console.log(item)
    item.scrollIntoView()
    this.scrollTop = originalScrollPosition

    // put a css visual indicator
    item.parentElement.style.cssText = "border-left: solid 4px rgb(59 130 246);"
  }

  handleTranscriptMount(e) {
    const slotElement = e.target.assignedElements({ flatten: true })[0]
    slotElement.addEventListener('click', (e) => {
      if ( e.target.dataset.vttTimestamp != undefined ) {
        this.jumpToThisTime(e.target.dataset.vttTimestamp)
      } else {
        this.jumpToThisTime(e.target.parentElement.dataset.vttTimestamp)
      }
    })

    // Scroll to the first match
    this.scrollToSearchItem(this.querySelector('mark'))
  }

  jumpToThisTime(timestamp) { 
    var time = this.toSeconds(timestamp.split(" ")[0])

    // send custom event to be picked up by yt-wrapper webcomponent
    const changePlayerTime = new CustomEvent('changePlayerTime', {
      detail: { message: time },
      bubbles: true,
      composed: true
    });
    this.dispatchEvent(changePlayerTime);
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
