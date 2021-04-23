def substrings(string, words)
    res = {}
    string = string.downcase
    words = words.map {|w| w.downcase}
    words.each do |w|
        res[w] = string.scan(w).count()
    end
    return res.select {|w, c| c > 0}
end

dictionary = ["Below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("below", dictionary)
p substrings("Howdy partner, sit down! How's it going?", dictionary)