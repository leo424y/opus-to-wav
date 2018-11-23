%x(cp -r opus wav)
ids=%x(cd wav; ls).split("\n")
ids.each do |id|
    %x(ffmpeg -i "#{id}.opus" "#{id}.wav")
  %x(
    for i in "#{id}"/*.wav; do
      sox -G "$i" -b 16 -c 1 -r 16k -t wav "_$i"
    done     
    )
end