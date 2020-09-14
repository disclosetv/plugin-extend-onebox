# name: Various new Onebox extensions
# about: Tell Onebox to render those extensions
# version: 1.0.0
# authors: @terrapop

Onebox = Onebox

class Onebox::Engine::BitChute
    include Onebox::Engine

    def self.priority
        0
    end

    REGEX = ^https?:\/\/www\.bitchute\.com\/video\/([0-9a-z\-]+)\/$

    matches_regexp(REGEX)

    def id
        @url.match(REGEXP)[1]
    end

    def to_html
		"<iframe src=\"https://www.bitchute.com/embed/#{id}/\" width=\"640\" height=\"360\" scrolling=\"no\" frameborder=\"0\" style=\"border: none;\" allowfullscreen=\"allowfullscreen\"></iframe>"
	end
end