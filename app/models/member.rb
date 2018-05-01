class Member < ApplicationRecord
  enum delete_flag: { not_deleted: 0 , deleted: -1}
end
