function se
    if test -d ./venv
       source venv/bin/activate.fish
       return 0
    end

    if test -d ./.venv
        source .venv/bin/activate.fish
        return 0
    end
    return 1
end
