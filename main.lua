require('checks')

function initPlayer()
	player = {}
	player.width = 30
	player.height = 30
	player.x = love.graphics.getWidth()/2 - player.width/2
	player.y = love.graphics.getHeight()/2 - player.height/2
	player.speed = 3
	player.draw = function(x, y, w, h)
		o_r, o_g, o_b = love.graphics.getColor()
		love.graphics.setColor(255,255,255)
		love.graphics.rectangle('fill', x, y, w, h)
		love.graphics.setColor(o_r, o_g, o_b)
	end
end

function love.load()
	initPlayer()
end

function love.update(dt)
	if love.keyboard.isDown('w') then
		player.y = player.y - (player.speed * 100) * dt
	elseif love.keyboard.isDown('s') then
		player.y = player.y + (player.speed * 100) * dt
	end
	if love.keyboard.isDown('a') then
		player.x = player.x - (player.speed * 100) * dt
	elseif love.keyboard.isDown('d') then
		player.x = player.x + (player.speed * 100) * dt
	end
	checkBorder(player)
end

function love.keypressed(key)
end

function love.draw()
	player.draw(player.x, player.y, player.width, player.height)
end
