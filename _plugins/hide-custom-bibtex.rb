module Jekyll
  module HideCustomBibtex
    def hideCustomBibtex(input)
	    keywords = @context.registers[:site].config['filtered_bibtex_keywords']

	    keywords.each do |keyword|
		    input = input.gsub(/^.*\b#{keyword}\b *= *\{.*$\n/, '')
	    end

      # Clean superscripts in author lists
      input = input.gsub(/^.*\bauthor\b *= *\{.*$\n/) { |line| line.gsub(/[*†‡§¶‖&^]/, '') }

      # Strip presentation HTML tags (e.g. <em> used to highlight venues in note)
      input = input.gsub(%r{</?[a-z][a-z0-9]*>}i, '')

      return input
    end
  end
end

Liquid::Template.register_filter(Jekyll::HideCustomBibtex)
