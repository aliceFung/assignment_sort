require_relative "../lib/sorts.rb"

describe Sorts do

  describe '#insertion_sort' do

    it 'should raise error if not given an array' do
      expect{subject.insertion_sort}.to raise_error(ArgumentError)
    end

    it 'should sort' do
      expect(subject.insertion_sort( [1,3,7,2,5] )).to eq([1,2,3,5,7])
    end

  end

  describe '#bubble_sort' do

    it 'should raise error if not given an array' do
      expect{subject.bubble_sort}.to raise_error(ArgumentError)
    end

    it 'should sort' do
      expect(subject.bubble_sort( [1,3,7,2,5] )).to eq([1,2,3,5,7])
    end
  end

  describe '#merge_sort' do

    #let(:a){Sort.new}

    it 'should raise error if not given an array' do
      expect{subject.merge_sort}.to raise_error(ArgumentError)
    end

    it 'should call merge function' do
      expect(subject).to respond_to(:merge)
      subject.merge_sort([1,2])
    end

    it 'should sort' do
      expect(subject.merge_sort( [1,3,7,2,5] )).to eq([1,2,3,5,7])
    end

  end


end