RSpec.describe Correlations do
  
  it "calculates correct values for weather dataset" do
    correlations = Correlations::Correlations.new.from_csv('./data/weather.csv')
    
    expect(correlations).to eq(
      'average_temperature' => -0.9499166137289158,
      'average_wind_speed' => -0.7059250219593274
    )
  end
  
  it "calculates correct values for glucose dataset" do
    correlations = Correlations::Correlations.new.from_csv('./data/glucose.csv')
    
    expect(correlations).to eq(
      'glucose_level' => 0.5298089018901744
    )
  end

end
