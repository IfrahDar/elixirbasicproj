defmodule NewprojWeb.ErrorJSONTest do
  use NewprojWeb.ConnCase, async: true

  test "renders 404" do
    assert NewprojWeb.ErrorJSON.render("404.json", %{}) == %{errors: %{detail: "Not Found"}}
  end

  test "renders 500" do
    assert NewprojWeb.ErrorJSON.render("500.json", %{}) ==
             %{errors: %{detail: "Internal Server Error"}}
  end
end
