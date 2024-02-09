import { LitElement, html, css } from 'lit';

class YoutubeVideoWrapper extends LitElement {
  static styles = css`
     :host {
       aspect-ratio: 16/9;
       display: block;
       overflow: hidden;
       position: relative;
       width: 100%;
     }
    
     :host iframe {
       height: 100%;
       left: -.5%;
       position: absolute;
       top: -.5%;
       width: 100%;
     }
  `;

  static properties = {
    videoId: { type: String },
    player: {}
  };

  constructor() {
    super();
    this.videoId = '';
    this.player = null;
  }

  connectedCallback() {
    super.connectedCallback();
    if (!window.YT) {
      // Load the YouTube iframe API script dynamically if not already loaded
      const tag = document.createElement('script');
      tag.src = 'https://www.youtube.com/iframe_api';
      const firstScriptTag = document.getElementsByTagName('script')[0];
      firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);
      window.onYouTubeIframeAPIReady = this.onYouTubeIframeAPIReady.bind(this);
    } else {
      // If the API is already loaded, directly call the initialization function
      this.onYouTubeIframeAPIReady();
    }
  }

  onYouTubeIframeAPIReady() {
    this.player = new YT.Player(this.shadowRoot.getElementById('youtube-player'), {
      videoId: this.videoId,
      events: {
        'onReady': this.onPlayerReady.bind(this),
        'onStateChange': this.onPlayerStateChange.bind(this)
      }
    });
  }

  onPlayerReady(event) {
    console.log('Player is ready');
    // You can perform actions when the player is ready here
  }

  onPlayerStateChange(event) {
    console.log('Player state changed:', event.data);
    // You can handle player state changes here
  }

  render() {
    return html`
      <iframe
        id="youtube-player"
        width="560"
        height="315"
        src="https://www.youtube.com/embed/${this.videoId}?enablejsapi=1"
        title="YouTube video player"
        frameborder="1"
        origin="http://localhost:3000"
        allow="clipboard-write; encrypted-media; picture-in-picture"
        allowfullscreen
      ></iframe>
    `;
  }
}

customElements.define('youtube-video-wrapper', YoutubeVideoWrapper);
