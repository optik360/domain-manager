require 'rufus-scheduler'

scheduler = Rufus::Scheduler::singleton

scheduler.every '1d' do
  expire_in_one_week = Domain.select { |d| d.due_date.at_midnight == 1.week.from_now.at_midnight }
  DomainMailer.expire_soon(expire_in_one_week).deliver_now if expire_in_one_week.any?
end