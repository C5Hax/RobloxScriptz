-- sends you to hell and then back to where you left

hellarea = 3.4028234663852886e+38
last_pos = {}
table.insert(last_pos, root.CFrame)
root.CFrame = CFrame.new(Vector3.new(0, heallarea, 0))
wait(4)
root.CFrame = last_pos[1]
