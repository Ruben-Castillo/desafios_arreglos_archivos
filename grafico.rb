def chart(array)
    n=array.count
    for i in (0..n-1) do
        print '|'
        (2*array[i]).times do
            print'*'
        end
        print "\n"
    end
    max=array.max
    print '>'
    (2*max).times do
        print '-'
    end
    print "\n"
    print ' '
   for i in (1..max) do
        print " #{i}" if i<10
        print i if i>=10
    end
    return nil
end


