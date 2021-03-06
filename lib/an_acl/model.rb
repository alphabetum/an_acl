class ActiveRecord::Base
  class << self
    # Override in model to define permissions for model reads.
    # Defaults to true, providing access to any user.
    def is_readable_by?(agent = nil, current_context = nil)
      true
    end
    
    # Override in model to define permissions for new object creation.
    # Defaults to true, providing access to any user.
    def is_creatable_by?(agent = nil, current_context = nil)
      true
    end
  end
  
  # Override in model to define permissions for reading instances.
  # Defaults to true, providing access to any user.
  def is_readable_by?(agent = nil)
    true
  end
  
  # Override in model to define permissions for updating instances.
  # Defaults to true, providing access to any user.
  def is_updatable_by?(agent = nil)
    true
  end
  
  # Override in model to define permissions for deleting instances.
  # Defaults to ActiveRecords::Base#is_updatable_by?(agent)
  def is_deletable_by?(agent = nil)
    is_updatable_by?(agent)
  end
end