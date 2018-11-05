function checkBorder(obj)
	if obj.y < 0 then
		obj.y = 0
	elseif obj.y > love.graphics.getHeight() - obj.height then
		obj.y = love.graphics.getHeight() - obj.height
	end
	if obj.x < 0 then
		obj.x = 0
	elseif obj.x > love.graphics.getWidth() - obj.width then
		obj.x = love.graphics.getWidth() - obj.width
	end
end

