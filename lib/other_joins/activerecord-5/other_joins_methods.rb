module OtherJoinsMethods
  extend ActiveSupport::Concern

  def left_joins(*args)
    # DEPRECATED: Use built in left_outer_join ActiveRecord method instead
    warn 'DEPRECATED: Use built in left_outer_join ActiveRecord method instead'
    left_outer_joins(*arg)
  end


  alias outer_joins left_joins
end
