defmodule Duper.ResultsTest do
    use ExUnit.Case
    alias Duper.Results
    test "can add entris to the results" do
        Results.add_hash_for("path1", 123)
        Results.add_hash_for("path2", 123)
        Results.add_hash_for("path3", 321)

        duplicates = Results.find_duplicates

        assert length(duplicates) == 1
        assert ~w(path1 path2) in duplicates
        assert ~w(path3) not in duplicates

    end

end