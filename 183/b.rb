s_x,s_y,g_x,g_y = gets.split().map(&:to_f)

 puts sprintf "%.10f", ( s_y * g_x + g_y * s_x ) / ( g_y + s_y )