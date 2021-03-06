module OtherJoinsMethods
  extend ActiveSupport::Concern

  def left_joins(*args)
    join_dependency = ActiveRecord::Associations::LeftJoinDependency.new(
      @klass,
      args,
      []
    )
    joins(join_dependency.join_associations)
  end


  alias outer_joins left_joins

end
