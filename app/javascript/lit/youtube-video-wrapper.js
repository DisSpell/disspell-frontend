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
  }

  render() {
    return html`
      <iframe
        width="560"
        height="315"
        src="https://www.youtube.com/embed/${this.videoId}"
        title="YouTube video player"
        frameborder="0"
        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
        allowfullscreen
      ></iframe>
    `;
  }
}
customElements.define('youtube-video-wrapper', YoutubeVideoWrapper);
