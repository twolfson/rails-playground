FactoryGirl.define() do
  factory(:article) do
    title("First title")
    text("First text")
  end

  factory(:article2) do
    title("Second title")
    text("Second text")
  end
end
