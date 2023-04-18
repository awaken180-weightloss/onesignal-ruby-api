=begin
#OneSignal

#A powerful way to send personalized messages at scale and build effective customer engagement strategies. Learn more at onesignal.com

The version of the OpenAPI document: 1.2.1
Contact: devrel@onesignal.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.0-SNAPSHOT

=end

require 'date'
require 'time'

module OneSignal
  class NotificationWithMetaAllOf
    # Number of notifications that have not been sent out yet. This can mean either our system is still processing the notification or you have delayed options set.
    attr_accessor :remaining

    # Number of notifications that were successfully delivered.
    attr_accessor :successful

    # Number of notifications that could not be delivered due to those devices being unsubscribed.
    attr_accessor :failed

    # Number of notifications that could not be delivered due to an error. You can find more information by viewing the notification in the dashboard.
    attr_accessor :errored

    # Number of users who have clicked / tapped on your notification.
    attr_accessor :converted

    # Unix timestamp indicating when the notification was created.
    attr_accessor :queued_at

    # Unix timestamp indicating when notification delivery should begin.
    attr_accessor :send_after

    # Unix timestamp indicating when notification delivery completed. The delivery duration from start to finish can be calculated with completed_at - send_after.
    attr_accessor :completed_at

    attr_accessor :platform_delivery_stats

    # Confirmed Deliveries number of devices that received the push notification. Paid Feature Only. Free accounts will see 0.
    attr_accessor :received

    # number of push notifications sent per minute. Paid Feature Only. If throttling is not enabled for the app or the notification, and for free accounts, null is returned. Refer to Throttling for more details.
    attr_accessor :throttle_rate_per_minute

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'remaining' => :'remaining',
        :'successful' => :'successful',
        :'failed' => :'failed',
        :'errored' => :'errored',
        :'converted' => :'converted',
        :'queued_at' => :'queued_at',
        :'send_after' => :'send_after',
        :'completed_at' => :'completed_at',
        :'platform_delivery_stats' => :'platform_delivery_stats',
        :'received' => :'received',
        :'throttle_rate_per_minute' => :'throttle_rate_per_minute'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'remaining' => :'Integer',
        :'successful' => :'Integer',
        :'failed' => :'Integer',
        :'errored' => :'Integer',
        :'converted' => :'Integer',
        :'queued_at' => :'Integer',
        :'send_after' => :'Integer',
        :'completed_at' => :'Integer',
        :'platform_delivery_stats' => :'PlatformDeliveryData',
        :'received' => :'Integer',
        :'throttle_rate_per_minute' => :'Integer'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'send_after',
        :'completed_at',
        :'received',
        :'throttle_rate_per_minute'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OneSignal::NotificationWithMetaAllOf` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OneSignal::NotificationWithMetaAllOf`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'remaining')
        self.remaining = attributes[:'remaining']
      end

      if attributes.key?(:'successful')
        self.successful = attributes[:'successful']
      end

      if attributes.key?(:'failed')
        self.failed = attributes[:'failed']
      end

      if attributes.key?(:'errored')
        self.errored = attributes[:'errored']
      end

      if attributes.key?(:'converted')
        self.converted = attributes[:'converted']
      end

      if attributes.key?(:'queued_at')
        self.queued_at = attributes[:'queued_at']
      end

      if attributes.key?(:'send_after')
        self.send_after = attributes[:'send_after']
      end

      if attributes.key?(:'completed_at')
        self.completed_at = attributes[:'completed_at']
      end

      if attributes.key?(:'platform_delivery_stats')
        self.platform_delivery_stats = attributes[:'platform_delivery_stats']
      end

      if attributes.key?(:'received')
        self.received = attributes[:'received']
      end

      if attributes.key?(:'throttle_rate_per_minute')
        self.throttle_rate_per_minute = attributes[:'throttle_rate_per_minute']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          remaining == o.remaining &&
          successful == o.successful &&
          failed == o.failed &&
          errored == o.errored &&
          converted == o.converted &&
          queued_at == o.queued_at &&
          send_after == o.send_after &&
          completed_at == o.completed_at &&
          platform_delivery_stats == o.platform_delivery_stats &&
          received == o.received &&
          throttle_rate_per_minute == o.throttle_rate_per_minute
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [remaining, successful, failed, errored, converted, queued_at, send_after, completed_at, platform_delivery_stats, received, throttle_rate_per_minute].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = OneSignal.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
