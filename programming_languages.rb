require 'pry'

=begin
languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }

  }
}
=end



def reformat_languages(languages)
  output_hash = {}
  languages.each do |style, language|
    language.each do |language_name, properties|
      if output_hash.keys.include?(language_name)
        output_hash[language_name][:style] = output_hash[language_name][:style] << style
else

      output_hash[language_name] = {
        :style => [style],
        :type => properties[:type].to_s
      }
    end
end
end
output_hash
end
