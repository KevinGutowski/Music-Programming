process = mute : amplify : pan;

mute = *(1-checkbox("[3]mute"));
amplify = *(hslider("[2]gain",0,0,1,0.01));
pan = _ <: *(p),*(1-p)
with {
	p = nentry("[1]pan[syle{",0.5,0,1,0.1);
};