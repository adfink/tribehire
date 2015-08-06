<ul>
<% current_user.repos.each do |repo| %>
  <li><%= repo.name %></li>
  <% end %>
</ul>
