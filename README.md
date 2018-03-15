<h1>About Explorit</h1>
  <p>Created by: Stacie Taylor-Cima</p>
  <p>Explorit is a Reddit Clone</p>

<hr>

<h1>Sign up for an Explorit account:</h1>
    <ul>
      <li>Access production site here: [Visit Explorit](obscure-thicket-93550.herokuapp.com)"
      <li>Create account using name, email, and password (Gravatar)</li>
      <li>Create topics and posts</li>
      <li>Comment and up-vote or down-vote posts</li>
      <li>Favorite posts and recieve email notifications when there is new activity on the post (ActiveMailer)</li>
    </ul>

<hr>

<h1>Setup & Configuration</h1>
  <h3>Languages and Frameworks:</h2>
    <ul>
      <li>Ruby on Rails and Bootstrap</li>
      <li>Ruby version 2.2.1</li>
    </ul>
  <h3>Databases:</h2>
    <ul>
      <li>SQLite (Test, Development)</li>
      <li>PostgreSQL (Production)</li>
    </ul>
  <h3>Development Tools and Gems include:</h2>
    <ul>
      <li>BCrypt for secure passwords</li>
      <li>SendGrid for email confirmation</li>
      <li>FactoryGirl for test suite success</li>
    </ul>
  <h3>To run Explorit locally:</h3>
    <ul>
      <li>Clone the repository</li>
      <li>Run bundle install</li>
      <li>Create and migrate the SQLite database with `rake db:create and rake db:migrate`</li>
      <li>Start the server using rails server</li>
      <li>Run the app on localhost:3000</li>
    </ul>
