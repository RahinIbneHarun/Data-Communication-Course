>> axis([xmin xmax ymin ymax]).
>> t = -pi:pi/100:pi;
>> s = cos(t);
>> plot(t,s)
>> axis([-pi pi -1 1])
>> xlabel(’-\pi \leq t \leq \pi’)
>> ylabel(’cos(t)’)
>> title(’The cosine function’)
>> text(-2, -0.5,’This is a note at position (-2, -0.5)’)
\leq is used to generate the less-equal sign.