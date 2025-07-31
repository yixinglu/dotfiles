hs.hotkey.bind({"cmd"}, "space", function()
    -- 切换到英文输入法
    hs.keycodes.setLayout("ABC") -- 替换为你的英文输入法名称
    -- 打开 Spotlight
    hs.execute("/usr/bin/open -a 'Spotlight'")
end)
