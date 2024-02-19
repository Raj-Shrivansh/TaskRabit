# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
<header> 
      <nav class="navbar navbar-expand-lg " style="background-color: #e3f2fd;">
      <div class="container-fluid">
        <%= link_to 'ESPN FAN FORUM',root_path,class:"navbar-brand fs-2 mx-5"%>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item">
          <%= link_to 'Home', root_path,class:"nav-link active fs-4 mx-3" %>
        </li>
        <% if user_signed_in? %>
          <li class="nav-item ">
          <%= link_to 'Post Message',new_message_path,class:"nav-link active fs-4" %>
        </li>
        <% end %>
         </ul>
        <ul class="navbar-nav ms-auto">
        <% if current_user.present? %>
        <li class="nav-item ms-auto">
          <%= link_to 'Sign Out',destroy_user_session_path,data: {turbo_method: 'delete', turbo_confirm: "Are you sure"},class:"nav-link active fs-4 mx-3 ms-auto"%>
        </li>
        <% else %>
        <li class="nav-item">
          <%= link_to 'Login',new_user_session_path,class:"nav-link active fs-4 mx-3" %>
        </li>
        <li class="nav-item">
          <%= link_to 'Signup',new_user_registration_path,class:"nav-link active fs-4 mx-3" %>
        </li>
        <% end %>
        </ul>
        </div>
      </div>
    </nav>
    </header>