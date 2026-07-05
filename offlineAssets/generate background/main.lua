stars = {}
function love.load()
	for x = 0, 9 do
		for y = 0, 9 do
			table.insert(stars, {x = x * 40 + math.random(0, 40), y = y * 40 + math.random(0, 40),})
		end
	end
	love.window.setMode(9*40*2, 9*40*2)
end

function love.update()
end

function love.draw()
	for i, star in ipairs(stars) do
		love.graphics.circle('fill', star.x, star.y, 1)
	end
	for i, star in ipairs(stars) do
		love.graphics.circle('fill', star.x + 9 * 40, star.y + 9 * 40, 1)
	end
	for i, star in ipairs(stars) do
		love.graphics.circle('fill', star.x, star.y + 9 * 40, 1)
	end
	for i, star in ipairs(stars) do
		love.graphics.circle('fill', star.x + 9 * 40, star.y, 1)
	end
end