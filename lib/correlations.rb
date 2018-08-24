require 'csv'
require_relative "./correlations/version"

module Correlations
  class Correlations
    def from_csv(path)

      raw = File.read(path)

      data = CSV.parse(raw, headers: true).map(&:to_h)

      sample_size = data.size
      primary_key = data.first.keys.first
      correlations = {}
      
      data.first.keys.reject { |k| k == primary_key }.each do |key|
        x = data.map { |r| r[primary_key] }.map(&:to_f)
        y = data.map { |r| r[key] }.map(&:to_f)
        xx = x.map { |x| x ** 2 }.sum
        yy = y.map { |y| y ** 2 }.sum
        xy = x.each_with_index.map { |x, i| x * y[i] }.sum
        
        a = (sample_size * xy - x.sum * y.sum)
        b = Math.sqrt((sample_size * xx - x.sum ** 2) * (sample_size * yy - y.sum ** 2))
        
        correlations[key] = a / b
      end
      
      return correlations
    end
  end
end
