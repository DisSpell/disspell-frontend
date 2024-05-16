import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "search", "times" ]
  static values = { index: { type: Number, default: 0 },
                    count: { type: Number, default: 0},
                    matches: Array
                  }

  connect() {
    // console.log('in search controller')
  }

  initialize() {
    const transcriptItems = this.getSearchElements()
    this.search(transcriptItems)
    this.countValue = this.matchesValue.length
    this.scrollToMatch(transcriptItems[this.matchesValue[0]])
    this.updateIndexElement()
  }

  getSearchElements() {
    // Get initial Item to Search Over
    return Array.from(document.querySelectorAll('[data-transcript-text]'))
  }

  scrollToMatch(match) {
    match.scrollIntoView()
  }

  next() {
    if (this.indexValue != this.countValue - 1) {
      this.indexValue += 1
      this.scrollToMatch(this.getSearchElements()[this.matchesValue[this.indexValue]])
      this.updateIndexElement()
    } else {
      this.indexValue = 0
      this.scrollToMatch(this.getSearchElements()[this.matchesValue[this.indexValue]])
      this.updateIndexElement()
    }
  }

  prev() {
    if (this.indexValue == 0) { return }
    this.indexValue -= 1
    this.scrollToMatch(this.getSearchElements()[this.matchesValue[this.indexValue]])
    this.updateIndexElement()
  }

  search(transcriptItems) {
    const searchTerm = this.searchTarget.value
    const searchRegExp = new RegExp(searchTerm, 'gi')
    this.matchesValue = []
    const matchingItemsWithIndex = transcriptItems.map((item, index) => {
      if (searchRegExp.test(item.textContent)) {
        return { item, index }
      } else {
        return null
      }
    });

    const filteredMatchingItems = matchingItemsWithIndex.filter(itemObj => itemObj !== null)

    this.matchesValue = filteredMatchingItems.map(item => { return item["index"] })
  }

  updateIndexElement() {
    this.timesTarget.innerText = this.indexValue + 1 + "/" + this.countValue
  }

}
