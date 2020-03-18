# frozen_string_literal: true

# class to find best seats
class BestOpenSeats
  def get_best_open_seats(input_json, req_num_of_seats)
    arr = []
    mid_of_arr = arr.length / 2
    input_json[:seats].each do |val|
      arr << val[1][:id] if val[1][:status] == 'AVAILABLE'
    end
    arr.sort[mid_of_arr..mid_of_arr + req_num_of_seats - 1]
  end
end

input_json = {
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
      "status": 'AVAILABLE'
    },
    "m7": {
      "id": 'm7',
      "row": 'm',
      "column": 8,
      "status": 'AVAILABLE'
    }
  }
}

p BestOpenSeats.new.get_best_open_seats(input_json, 2)
