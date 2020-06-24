def substrings(str, dict)
    substrs = Hash.new(0)
    prep_str = str.downcase()
    dict.each do |candidate|
        prep_cand = candidate.downcase()
        prep_str.scan(prep_cand) {|cand| substrs[cand] += 1}
    end
    return substrs
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("Howdy partner, sit down! How's it going?", dictionary)