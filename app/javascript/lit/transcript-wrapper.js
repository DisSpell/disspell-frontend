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

    this._handleNextButton = this._handleNextButton.bind(this)
    this._handlePrevButton = this._handlePrevButton.bind(this)
    this._handleSearchUpdate = this._handleSearchUpdate.bind(this)
    this.totalSearchResults = this.totalSearchResults.bind(this)
    this.scrollToSearchItem = this.scrollToSearchItem.bind(this)
  }

  totalSearchResults() {
    let searchCountElement = this.querySelector('#searchCount')

    let total = this.querySelectorAll('mark').length
    searchCountElement.innerText = this.count + '/' + total
  }

  _handleSearchMount(e) {
    // console.log('in search change', e.target.assignedElements({ flatten: true }))
    this.totalSearchResults()
    const slotElement = e.target.assignedElements({ flatten: true })[0]
    let searchInputElement = slotElement.querySelector('#searchValue')
    // this.query = searchInputElement.value
    let searchButtonElements = slotElement.querySelector('#searchButtons')
    searchButtonElements.children.nextButton.addEventListener('click', this._handleNextButton)
    searchButtonElements.children.prevButton.addEventListener('click', this._handlePrevButton)
    slotElement.querySelector('#searchValue').addEventListener('change', this._handleSearchUpdate)
  }

  _handleNextButton(e) {
    let searchElements = this.querySelectorAll('mark')
    let currentElement = searchElements[this.count - 1]

    if ( (this.count + 1) <= searchElements.length ) {
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

  _handlePrevButton(e) {
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
    item.parentElement.scrollIntoView()
    this.scrollTop = originalScrollPosition

    // put a css visual indicator
    item.parentElement.style.cssText = "border-left: solid 4px rgb(59 130 246);"
  }

  _handleSearchUpdate(e) {
    // remove previous search item styling and reset count
    this.querySelectorAll('mark')[this.count - 1].parentElement.style.cssText = ""
    this.count = 1

    // remove old search marks
    this.querySelectorAll('mark').forEach(mark => { mark.outerHTML = mark.innerHTML })
    // mark the new search term
    this.querySelectorAll('[data-transcript-text]').forEach( transcriptTextItem => { 
      const regex = new RegExp(`(${e.target.value})`, 'gi')
      transcriptTextItem.innerHTML = transcriptTextItem.innerHTML.replace(regex, '<mark>$1</mark>')
    })

    // scroll to first instance
    this.scrollToSearchItem(this.querySelector('mark'))

    // update total results
    this.totalSearchResults()
  }

  _handleTranscriptMount(e) {
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
      <slot name="search" @slotchange=${this._handleSearchMount}></slot>
      <slot name="transcript" @slotchange=${this._handleTranscriptMount}></slot>
    `;
  }
}

customElements.define('transcript-wrapper', TranscriptWrapper)
