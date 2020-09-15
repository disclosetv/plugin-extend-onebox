# name: plugin-extend-onebox
# about: Tell Onebox to render those extensions
# version: 0.1.0
# authors: @terrapop

register_javascript <<JS
$(document).on('click', '.third-party-ratio', function() {
    var iframe = $('<iframe src="'+$(this).data("embed-url")+'" scrolling="no" frameborder="0" style="border: none;"></iframe>');
    // Replace the poster image with player
    $(this).empty().append(iframe);
});
JS

register_css <<CSS
.onebox.third-party-video {
    border: none;
    padding: 0;
    background: transparent;
}
.onebox.third-party-video .onebox-body img {
    max-height: unset;
    max-width: unset;
    height: auto;
    width: 100%;
    float: unset;
    margin: auto;
    position: absolute;
    top: -9999px;
    bottom: -9999px;
    left: -9999px;
    right: -9999px;
    cursor: hand;
    cursor: pointer;
}
.onebox.third-party-video iframe {
  border: none;
  position: absolute;
  top: 0;
  right: 0;
  bottom: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background-color: transparent;
  padding: 0;
}
.onebox .third-party-ratio {
  width: 100%;
  height: 0;
  padding-top: 56.25%;
  position: relative;
  background-color: #000;
  overflow: hidden;
}
.onebox .play-circle {
  opacity: .8;
  height: 77px;
  left: 50%;
  margin-left: -38px;
  margin-top: -38px;
  position: absolute;
  top: 50%;
  width: 77px;
  background: url("data:image/png;base64,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") no-repeat;
  cursor: hand;
  cursor: pointer;
}
@media only screen and (max-width: 478px) {
  .onebox .play-circle {
      margin-left: -28px;
      margin-top: -28px;
      background-size: 50px 50px;
  }
}
CSS

Onebox = Onebox

class Onebox::Engine::BitChuteOnebox
  include Onebox::Engine
  include Onebox::Engine::StandardEmbed

  def self.priority
    0
  end

  # Example https://www.bitchute.com/video/akUhtVvKpTw/
  REGEXP = /^https?:\/\/(?:www\.)?bitchute\.com\/video\/(?<id>[0-9a-zA-z\-]+)\/(?:.)*$/
  matches_regexp REGEXP
  always_https

  def id
      @url.match(REGEXP)[:id];
  end

  def to_html
    og = get_opengraph
    embed_url = "https://www.bitchute.com/embed/#{id}/"
    return %{
      <aside class="onebox third-party-video">
          <article class="onebox-body">
            <div class="third-party-ratio" data-embed-url="#{embed_url}">
                <img src="#{og.get_secure_image}" class="scale-image"/>
                <span class="play-circle"></span>
            </div>
          </article>
       </aside>
   }
  end

  def placeholder_html
      to_html
  end
end