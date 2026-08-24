class LocomotiveEngineer
  def self.generate_list_of_wagons(*wagons)= wagons

  def self.fix_list_of_wagons(each_wagons_id, missing_wagons)
    x, y, *rest = each_wagons_id
    with_missing = rest.flat_map { |wagon| wagon == 1 ? [wagon, *missing_wagons] : [wagon]}
    with_missing + [x, y]
  end

  def self.add_missing_stops(routing, **stops)
    routing[:stops] = stops.values
    routing
  end

  def self.extend_route_information(route, more_route_information)
    all_information = {**route, **more_route_information}
  end
end
