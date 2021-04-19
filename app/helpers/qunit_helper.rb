# frozen_string_literal: true

module QunitHelper
  def theme_tests
    theme_id = request.env[:resolved_theme_ids]&.first
    return "" unless Integer === theme_id

    src = "#{GlobalSetting.cdn_url}#{Discourse.base_path}/theme-javascripts/tests/#{theme_id}.js?__ws=#{Discourse.current_hostname}"
    "<script src='#{src}'></script>".html_safe
  end
end
