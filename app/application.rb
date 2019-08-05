class Application

  def call(env)
    
    resp = Rack::Response.new
    rand1 = Kernel.rand(20)
    rand2 = Kernel.rand(20)
    rand3 = Kernel.rand(20)

    if rand1 == rand2 && rand2 == rand3

      resp.write "You Win"
    else

      resp.write "You Lose"
    end

    resp.finish
  end

end
