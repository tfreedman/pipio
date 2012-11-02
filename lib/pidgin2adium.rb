require 'date'
require 'time'

require 'pidgin2adium/version'
require 'pidgin2adium/tag_balancer'
require 'pidgin2adium/parser_factory'
require 'pidgin2adium/parsers/null_parser'
require 'pidgin2adium/parsers/basic_parser'
require 'pidgin2adium/parsers/text_log_parser'
require 'pidgin2adium/parsers/html_log_parser'
require 'pidgin2adium/time_parser'
require 'pidgin2adium/metadata'
require 'pidgin2adium/metadata_parser'
require 'pidgin2adium/alias_registry'

module Pidgin2Adium
  # Parses the log at the given path into a Chat.
  def self.parse(logfile_path, sender_aliases)
    factory = ParserFactory.new(sender_aliases)
    parser = factory.parser_for(File.expand_path(logfile_path))
    parser.parse
  end
end
