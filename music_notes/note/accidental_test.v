module note

fn test_accidental_semitones() {
	assert Accidental{-4}.semitones == -4
	assert triple_flat.semitones == -3
	assert double_flat.semitones == -2
	assert flat.semitones == -1
	assert natural.semitones == 0
	assert sharp.semitones == 1
	assert double_sharp.semitones == 2
	assert triple_sharp.semitones == 3
	assert Accidental{4}.semitones == 4
}

fn test_accidental_is_flat() {
	assert Accidental{-4}.is_flat()
	assert triple_flat.is_flat()
	assert double_flat.is_flat()
	assert flat.is_flat()
	assert !natural.is_flat()
	assert !sharp.is_flat()
	assert !double_sharp.is_flat()
	assert !triple_sharp.is_flat()
	assert !Accidental{4}.is_flat()
}

fn test_accidental_is_natural() {
	assert !Accidental{-4}.is_natural()
	assert !triple_flat.is_natural()
	assert !double_flat.is_natural()
	assert !flat.is_natural()
	assert natural.is_natural()
	assert !sharp.is_natural()
	assert !double_sharp.is_natural()
	assert !triple_sharp.is_natural()
	assert !Accidental{4}.is_natural()
}

fn test_accidental_is_sharp() {
	assert !Accidental{-4}.is_sharp()
	assert !triple_flat.is_sharp()
	assert !double_flat.is_sharp()
	assert !flat.is_sharp()
	assert !natural.is_sharp()
	assert sharp.is_sharp()
	assert double_sharp.is_sharp()
	assert triple_sharp.is_sharp()
	assert Accidental{4}.is_sharp()
}

fn test_accidental_symbol() {
	assert Accidental{-4}.symbol() == '𝄫𝄫'
	assert triple_flat.symbol() == '♭𝄫'
	assert double_flat.symbol() == '𝄫'
	assert flat.symbol() == '♭'
	assert natural.symbol() == '♮'
	assert sharp.symbol() == '♯'
	assert double_sharp.symbol() == '𝄪'
	assert triple_sharp.symbol() == '♯𝄪'
	assert Accidental{4}.symbol() == '𝄪𝄪'
}
