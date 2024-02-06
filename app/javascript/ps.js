import PerfectScrollbar from "perfect-scrollbar"

// Initialize the scrollbar
const container = document.getElementById('video-details');
const ps = new PerfectScrollbar(container, {
  // wheelSpeed: 2,
  wheelPropagation: true,
  minScrollbarLength: 20,
});

// Update the scrollbar when the content changes
container.addEventListener('ps-content-updated', () => {
  console.log('here');
  ps.update();
});
