n,m = gets.split.map(&:to_f)

m_deg = Rational(m , 60) * 360
n_deg = Rational((n%12),12) * 360 + Rational(1,12) * m_deg

deg = (m_deg - n_deg).to_f.abs 

puts deg > 180? 360 - deg : deg