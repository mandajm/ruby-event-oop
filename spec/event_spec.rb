require_relative '../lib/event'

describe Event do

  before(:each) do
    Object.send(:remove_const, 'Event')
    load 'event.rb'
  end

	describe 'initializer' do
    it 'creates an event' do # créer un user
      event = Event.new("2019-02-02 15:00", 30, "Démenagement à Faravohitra",["Sayna4","PKcrash","Loumay"])
      expect(Event.class).to eq(Class) #verify que l'utilisateur a bien sortie le resultat
    end
    describe "the date_begin method" do 
      it "should respond to date begin" do
        expect(@start_date).to eq(@start_date)
          
      end  
    end
	end

end