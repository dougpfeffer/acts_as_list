require 'acts_as_vm_list/active_record/acts/vm_list'

module ActsAsVmList
  if defined? Rails::Railtie
    require 'rails'
    class Railtie < Rails::Railtie
      initializer 'acts_as_vm_list.insert_into_active_record' do
        ActiveSupport.on_load :active_record do
          ActsAsVmList::Railtie.insert
        end
      end
    end
  end

  class Railtie
    def self.insert
      if defined?(ActiveRecord)
        ActiveRecord::Base.send(:include, ActiveRecord::Acts::VmList)
      end
    end
  end
end

ActsAsVmList::Railtie.insert
