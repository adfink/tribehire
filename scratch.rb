<ul>
<% current_user.repos.each do |repo| %>
  <li><%= repo.name %></li>
  <% end %>
</ul>







 <div class="col s12 m4 l2 center-align">
<p>Tribes</p>
      <ul id="dropdown2" class="dropdown-content">
        <li><a href="#!">one<span class="badge">1</span></a></li>
<li><a href="#!">two<span class="new badge">1</span></a></li>
        <li><a href="#!">three</a></li>
      </ul>
<a class="btn dropdown-button" href="#!" data-activates="dropdown2">Tribes<i class="mdi-navigation-arrow-drop-down right"></i></a>
</div>
