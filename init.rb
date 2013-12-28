$:.unshift "#{File.dirname(__FILE__)}/lib"
require 'acts_as_vm_list'

ActsAsVmList::Railtie.insert
