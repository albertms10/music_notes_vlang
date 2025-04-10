module note

import encoding.utf8

pub struct Note {
pub:
	base_note  BaseNote @[required]
	accidental Accidental = natural
}

pub const c = Note{
	base_note: .c
}
pub const d = Note{
	base_note: .d
}
pub const e = Note{
	base_note: .e
}
pub const f = Note{
	base_note: .f
}
pub const g = Note{
	base_note: .g
}
pub const a = Note{
	base_note: .a
}
pub const b = Note{
	base_note: .b
}

pub fn (note Note) str() string {
	note_str := utf8.to_upper(note.base_note.str())
	accidental_str := if note.accidental.semitones == 0 {
		''
	} else {
		note.accidental.str()
	}
	return '${note_str}${accidental_str}'
}
