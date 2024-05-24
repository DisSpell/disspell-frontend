import { LitElement, html, css } from 'lit';

class TranscriptWrapper extends LitElement {
  static styles = css`
    @tailwind base;
    @tailwind utilities;
  `;

  static properties = {
  };

  constructor() {
    super()
  }

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
      <section id="video-details" class="overflow-hidden grid">
        <div data-controller="search"
             class="grid lg:grid-cols-[1fr_4fr] m-3">
          <div data-search-target="times" data-search-index-value="1" data-search-count-value="0"
               class="self-center text-end pr-4"></div>
          <input type="text" data-action="input->search#updateSearch" data-search-target="search"
            value="<%= params[:query] %>"></input>
          <div class="flex justify-around col-start-2 mt-2">
            <button class="custom-button" data-action="search#prev">Prev</button>
            <button class="custom-button" data-action="search#next">Next</button>
          </div>
        </div>
        <section id="transcript" data-controller="perfect-scrollbar" 
          class="relative h-full grid grid-cols space-y-1">
          <div class="grid grid-cols space-y-1">
            <% @parts_timestramps_arrays.each do |subarray| %>
              <div data-controller="transcript" class="group/timestamp hover:shadow-xl">
                <div data-action="click->transcript#jumpToThisTime"
                     class="group/timestamp p-4 grid grid-cols-[auto_1fr] 
                            content-center divide-x-2 hover:cursor-pointer">
                  <span data-transcript-target="timestamp"
                        class="self-center text-center pl-3 pr-3
                               group-hover/timestamp:underline"
                        data-vtt-timestamp="<%= subarray.first %>">
                    <%= convert_vtt_timestamp(subarray.first) %>
                  </span>
                  <span data-transcript-text class="self-center text-start 
                                                    group-hover/timestamp:underline pr-1 pl-3">
                    <%= highlight(subarray.second, params[:query]) %>
                  </span>
                </div>
              </div>
            <% end %>
          </div>
        </section>
      </section>
    `;
  }
}
customElements.define('transcript-wrapper', TranscriptWrapper)
