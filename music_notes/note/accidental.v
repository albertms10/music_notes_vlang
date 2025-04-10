module note

import math
import strings

pub struct Accidental {
pub:
	semitones int
}

pub const triple_flat = Accidental{-3}
pub const double_flat = Accidental{-2}
pub const flat = Accidental{-1}
pub const natural = Accidental{}
pub const sharp = Accidental{1}
pub const double_sharp = Accidental{2}
pub const triple_sharp = Accidental{3}

// is_flat returns whether this `Accidental` is flattened.
pub fn (accidental Accidental) is_flat() bool {
	return accidental.semitones < 0
}

// is_natural returns whether this `Accidental` is natural.
pub fn (accidental Accidental) is_natural() bool {
	return accidental.semitones == 0
}

// is_sharp returns whether this `Accidental` is sharpened.
pub fn (accidental Accidental) is_sharp() bool {
	return accidental.semitones > 0
}

const double_sharp_symbol = `𝄪`
const double_sharp_symbol_alt = `x`
const sharp_symbol = `♯`
const sharp_symbol_alt = `#`
const natural_symbol = `♮`
const flat_symbol = `♭`
const flat_symbol_alt = `b`
const double_flat_symbol = `𝄫`

// symbol returns the symbol string representation for this `Accidental`.
pub fn (accidental Accidental) symbol() string {
	if accidental.semitones == 0 {
		return natural_symbol.str()
	}

	accidental_symbol := if accidental.semitones < 0 { flat_symbol } else { sharp_symbol }
	double_accidental_symbol := if accidental.semitones < 0 {
		double_flat_symbol
	} else {
		double_sharp_symbol
	}

	abs_semitones := math.abs(accidental.semitones)
	single_accidentals := strings.repeat_string(accidental_symbol.str(), abs_semitones % 2)
	double_accidentals := strings.repeat_string(double_accidental_symbol.str(), abs_semitones / 2)

	return single_accidentals + double_accidentals
}

pub fn (accidental Accidental) str() string {
	return accidental.symbol()
}
