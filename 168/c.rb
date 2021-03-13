A,B,H,M = gets.split.map(&:to_f)

rad = Math::PI * 2.0 * ((H / 12.0 + M / 60.0 / 12.0) - M / 60.0)
rsq = Math.sqrt(A * A + B * B - 2.0 * A * B * Math.cos(rad))

puts sprintf("%.20f",rsq)