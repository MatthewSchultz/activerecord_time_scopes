require "activerecord_time_scopes/railtie"

module ActiverecordTimeScopes
  extend ActiveSupport::Concern

  module ClassMethods
    def created_before(time)
      time = time.created_at if time.is_a?(ActiveRecord::Base)
      where('created_at < ?', time)
    end

    def created_after(time)
      time = time.created_at if time.is_a?(ActiveRecord::Base)
      where('created_at > ?', time)
    end

    def created_between(time, time2)
      created_after(time).created_before(time2)
    end

    def created_today
      created_after(Time.zone.now.beginning_of_day)
    end

    def created_yesterday
      created_between(Time.zone.now.beginning_of_day - 1.days,Time.zone.now.beginning_of_day)
    end

    def created_this_week
      created_after(Time.zone.now.beginning_of_week)
    end

    def created_last_week
      created_between(Time.zone.now.beginning_of_week - 1.week, Time.zone.now.beginning_of_week)
    end

    def created_this_month
      created_after(Time.zone.now.beginning_of_month)
    end

    def created_last_month
      # This is different, since months can be different lengths:
      created_between((Time.zone.now.beginning_of_month - 1.day).beginning_of_month, Time.zone.now.beginning_of_month)
    end

    def created_this_year
      created_after(Time.zone.now.beginning_of_year)
    end

    def created_last_year
      created_between(Time.zone.now.beginning_of_year - 1.years, Time.zone.now.beginning_of_year)
    end

    def updated_before(time)
      time = time.updated_at if time.is_a?(ActiveRecord::Base)
      where('updated_at < ?', time)
    end

    def updated_after(time)
      time = time.updated_at if time.is_a?(ActiveRecord::Base)
      where('updated_at > ?', time)
    end

    def updated_between(time, time2)
      updated_after(time).updated_before(time2)
    end

    def updated_today
      updated_after(Time.zone.now.beginning_of_day)
    end

    def updated_yesterday
      updated_between(Time.zone.now.beginning_of_day - 1.days,Time.zone.now.beginning_of_day)
    end

    def updated_this_week
      updated_after(Time.zone.now.beginning_of_week)
    end

    def updated_last_week
      updated_between(Time.zone.now.beginning_of_week - 1.week, Time.zone.now.beginning_of_week)
    end

    def updated_this_month
      updated_after(Time.zone.now.beginning_of_month)
    end

    def updated_last_month
      # This is different, since months can be different lengths:
      updated_between((Time.zone.now.beginning_of_month - 1.day).beginning_of_month, Time.zone.now.beginning_of_month)
    end

    def updated_this_year
      updated_after(Time.zone.now.beginning_of_year)
    end

    def updated_last_year
      updated_between(Time.zone.now.beginning_of_year - 1.years, Time.zone.now.beginning_of_year)
    end
  end
end

ActiveRecord::Base.send :include, ActiverecordTimeScopes
