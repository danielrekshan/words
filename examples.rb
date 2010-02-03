#!/usr/bin/env ruby

require 'rubygems'
require 'words'

if __FILE__ == $0
  
  wordnet = Words::Words.new # :tokyo
  
  puts wordnet
  
  puts wordnet.find('bat')
  puts wordnet.find('bat').available_pos.inspect
  puts wordnet.find('bat').lemma
  puts wordnet.find('bat').nouns?
  puts wordnet.find('bat').synsets('noun')
  puts wordnet.find('bat').noun_ids
  puts wordnet.find('bat').synsets(:noun)[2].words.inspect
  puts wordnet.find('bat').nouns.last.relations
  wordnet.find('bat').synsets('noun').last.relations.each { |relation| puts relation.inspect }
  puts wordnet.find('bat').synsets('noun').last.hyponyms?
  puts wordnet.find('bat').synsets('noun').last.participle_of_verbs?
  
  puts wordnet.find('bat').synsets('noun').last.relations(:hyponym)
  puts wordnet.find('bat').synsets('noun').last.hyponyms?
  puts wordnet.find('bat').synsets('noun').last.relations("~")
  puts wordnet.find('bat').synsets('verb').last.inspect
  puts wordnet.find('bat').synsets('verb').last.words.inspect
  puts wordnet.find('bat').synsets('verb').last.words_with_lexical_ids.inspect
  
  puts wordnet.find('bat').synsets('verb').first.lexical.inspect
  puts wordnet.find('bat').synsets('verb').first.lexical_description
  
  puts wordnet.find('jkashdfajkshfksjdhf')

  if wordnet.evocations_enabled?
    puts wordnet.find("broadcast").senses.first.synset_id
#    puts wordnet.find("broadcast").senses.first.evocations[1].inspect
  end

  wordnet.close
  
end