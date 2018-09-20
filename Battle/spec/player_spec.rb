require 'player'

describe Player do
  subject { described_class.new("Bowser Jr.", 100) }

  it 'should have a name' do
    expect(subject.name).to eq('Bowser Jr.')
  end

  it 'should have hitpoints' do
    expect(subject.hp).to eq(100)
  end

  it "should be able to lose hp" do
    subject.lose_hp(20)
    expect(subject.hp).to eq 80
  end
end
