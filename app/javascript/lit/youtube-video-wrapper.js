import {LitElement, html, css} from 'lit';

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
    videoId: { type: String }
  };

  constructor() {
    super();
    this.videoId = '';
    this.player;
  }

  connectedCallback() {
    super.connectedCallback();
    // Load the YouTube iframe API script dynamically
    const tag = document.createElement('script');
    tag.src = 'https://www.youtube.com/iframe_api';
    const firstScriptTag = document.getElementsByTagName('script')[0];
    firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);
    window.onYouTubeIframeAPIReady = this.onYouTubeIframeAPIReady.bind(this);
  }

  onYouTubeIframeAPIReady() {
    this.player = new YT.Player('youtube-player', {
        videoId: this.videoId,
        events: {
          'onReady': this.onPlayerReady(event),
          'onStateChange': this.onPlayerStateChange(this)
        }
    });
    console.log('new player ready?');
  }

  onPlayerReady(event) {
    // document.getElementById('youtube-player').style.borderColor = '#FF6D00';
    console.log('hi')
  }

  onPlayerStateChange(event) {
    // changeBorderColor(event.data);
    console.log('state change?');
    console.log(event);
  }

  render() {
    return html`
      <iframe
        id="youtube-player"
        width="560"
        height="315"
        src="https://www.youtube.com/embed/${this.videoId}"
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
