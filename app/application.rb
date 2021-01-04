class Application

  def call(env)
    return [ 200, {'Content-Type' => 'text/html'}, pretty_response ]
  end

  def pretty_response
    (Time.now.to_i < 12:00) ?  ["<em>Good Morning!</em>"] : ["<strong>Good Afternoon!</strong>"]
  end
end
