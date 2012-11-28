module ApplicationHelper
  def title
    base_title = "Spruceling"
    title = truncate(@title, :length => 60, :separator => ' ')
    if @title.nil?
      base_title
    else
      "#{title} | #{base_title}"
    end
  end

  def description
    @description.nil? ? "Spruceling is the marketplace to buy and sell gently used kids clothing." : @description
  end

  def google_analytics
    "
    <script type='text/javascript'>
      var _gaq = _gaq || [];
      _gaq.push(['_setAccount', 'UA-36630593-1']);
      _gaq.push(['_trackPageview']);

      (function() {
        var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
        var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
      })();
    </script>
    "
  end
end
