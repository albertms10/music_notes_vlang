import music_notes.note { Accidental, Note }

fn main() {
	a := Note{.a, &Accidental{-1}}
	print(a)
}
