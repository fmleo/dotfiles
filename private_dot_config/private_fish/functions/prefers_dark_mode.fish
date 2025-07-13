function prefers_dark_mode
    #set color_scheme (kreadconfig6 --group "General" --key "ColorScheme" 2>/dev/null)

    #if string match -q "*Dark*" -- $color_scheme
    #    return 0  # Dark mode is active
    #else
    #    return 1  # Dark mode is not active
    #end

    set color_scheme (darkman get)

    if string match -q dark -- $color_scheme
        return 0
    else
        return 1
    end
end
