RSpec.describe SimplecovMessage do
  it 'has a version number' do
    expect(SimplecovMessage::VERSION).not_to be nil
  end

  it 'includes full coverage profile' do
    expect(SimpleCov.profiles).to include(:require_full_coverage)
  end

  it 'includes 90 percent coverage profile' do
    expect(SimpleCov.profiles).to include(:require_90pct_coverage)
  end

  it 'includes 80 percent coverage profile' do
    expect(SimpleCov.profiles).to include(:require_80pct_coverage)
  end

  context 'minimum coverage level' do
    let(:config_class) do
      Class.new do
        include SimpleCov::Configuration

        def load_profile(name)
          configure(&SimpleCov.profiles[name.to_sym])
        end
      end
    end
    let(:config) { config_class.new }
    
    before(:each) { allow(SimpleCov).to receive(:at_exit) }

    it 'is 100 percent for full coverage profile' do
      config.load_profile(:require_full_coverage)
      expect(config.minimum_coverage).to eq(100)
    end

    it 'is 90 percent for 90 percent profile' do
      config.load_profile(:require_90pct_coverage)
      expect(config.minimum_coverage).to eq(90)
    end

    it 'is 80 percent for 80 percent profile' do
      config.load_profile(:require_80pct_coverage)
      expect(config.minimum_coverage).to eq(80)
    end
  end
end
