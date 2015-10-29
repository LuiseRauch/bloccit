module RatingsHelper
  def rating_to_buttons(rating)
    raw rating.map { |r| link_to r.severity, rating_path(id: r.id), class: 'btn-xs btn-primary' }
  end
end
