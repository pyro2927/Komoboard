class BaseWidget
  
  def self::inherited( klass )
    parser_name = klass.to_s.sub( /Parser$/, '' ).downcase.intern

    @registry ||= {}
    @registry[ parser_name ] = klass
  end

  def self::registry
    return @registry
  end
  
end