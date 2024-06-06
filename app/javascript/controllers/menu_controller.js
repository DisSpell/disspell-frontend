import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["burgerMenu", "overlayMenu"]
  static values = {
  }

  connect() {
    // console.log('in menu stimulus controller')
  }

  toggleMenu() {
    this.burgerMenuTarget.classList.toggle("close");
    this.overlayMenuTarget.classList.toggle("overlay");
  }

}
