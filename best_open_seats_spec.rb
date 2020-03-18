# frozen_string_literal: true

require './best_open_seats'

# rubocop:disable Metrics/BlockLength

RSpec.describe BestOpenSeats do
  let(:input_json) do
    {
      "venue": {
        "layout": {
          "rows": 10,
          "columns": 50
        }
      },
      "seats": {
        "a1": {
          "id": 'a1',
          "row": 'a',
          "column": 1,
          "status": 'AVAILABLE'
        },
        "b5": {
          "id": 'b5',
          "row": 'b',
          "column": 5,
          "status": 'NOT AVAILABLE'
        },
        "h7": {
          "id": 'h7',
          "row": 'h',
          "column": 7,
          "status": 'NOT AVAILABLE'
        },
        "m7": {
          "id": 'm7',
          "row": 'm',
          "column": 8,
          "status": 'AVAILABLE'
        }
      }
    }
  end

  let(:input_json_1) do
    {
      "venue": {
        "layout": {
          "rows": 10,
          "columns": 50
        }
      },
      "seats": {
        "a1": {
          "id": 'a1',
          "row": 'a',
          "column": 1,
          "status": 'NOT AVAILABLE'
        },
        "b5": {
          "id": 'b5',
          "row": 'b',
          "column": 5,
          "status": 'NOT AVAILABLE'
        },
        "h7": {
          "id": 'h7',
          "row": 'h',
          "column": 7,
          "status": 'NOT AVAILABLE'
        },
        "m7": {
          "id": 'm7',
          "row": 'm',
          "column": 8,
          "status": 'NOT AVAILABLE'
        }
      }
    }
  end

  subject { BestOpenSeats.new.get_best_open_seats(input_json, 2) }

  context 'when seats are available' do
    it 'returns the best seats' do
      expect(subject).to eq(%w[a1 m7])
    end
  end

  context 'when called with proper args returns best seats' do
    it 'returns the users email' do
      expect(BestOpenSeats.new.get_best_open_seats(input_json_1, 2)).to eq([])
    end
  end
end

# rubocop:enable Metrics/BlockLength
