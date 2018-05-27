class Member < ApplicationRecord
  enum status: { entry: 0, doit: 1, pass: 2 }



  def self.data_set()
    members = member_shuffle()

    if History.count != 0 then
      members, history_hash = avoid_duplication(members)
    end

    data_save(members, history_hash)

    return members, history_hash
  end

  def self.data_save(members, history_hash)
    index = 0
    history_hash.each_key do |key|
      history = History.new
      history.date = Date.today
      history.member_name = members[index]
      history.role_name = key
      history.save!
      index += 1
    end
  end

  def self.member_shuffle()
    members = Member.doit.sort.pluck(:name)
    roles = Role.all.pluck(:name)
    members += Member.entry.pluck(:name).shuffle[0, roles.count - members.count]
    entry_members = members.shuffle
    return entry_members
  end


  def self.avoid_duplication(members)
    last_date = History.last.date
    history_data = History.where(date: last_date).sort.pluck(:role_name, :member_name)
    history_hash = Hash[*history_data.flatten]

    loop do
      index = 0
      flag = true

      history_hash.each_value do |value|
        if value == members[index] then
          flag = false
          break
        end
        index += 1
      end

      if flag then
        return members, history_hash
      end
      members = member_shuffle()
    end

    return members, history_hash
  end

end
