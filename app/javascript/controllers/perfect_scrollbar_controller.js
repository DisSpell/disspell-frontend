import { Controller } from "@hotwired/stimulus"
import PerfectScrollbar from "perfect-scrollbar"

export default class extends Controller {
  connect() {
    const container = this.element
    const ps = new PerfectScrollbar(container, {
      // wheelSpeed: 2,
      wheelPropagation: true,
      minScrollbarLength: 20,
    })

    // Possibly add hook for on update
    // container.addEventListener('ps-content-updated', () => {
    //   console.log('here');
    //   // Optionally find a reason to update?
    //   // ps.update();
    // });
  }

}
