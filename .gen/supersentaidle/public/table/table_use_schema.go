//
// Code generated by go-jet DO NOT EDIT.
//
// WARNING: Changes to this file may cause incorrect behavior
// and will be lost if the code is regenerated
//

package table

// UseSchema sets a new schema name for all generated table SQL builder types. It is recommended to invoke
// this method only once at the beginning of the program.
func UseSchema(schema string) {
	Character = Character.FromSchema(schema)
	DailyChallenge = DailyChallenge.FromSchema(schema)
	Mecha = Mecha.FromSchema(schema)
	SchemaMigrations = SchemaMigrations.FromSchema(schema)
	Series = Series.FromSchema(schema)
	UserProgress = UserProgress.FromSchema(schema)
	Weapon = Weapon.FromSchema(schema)
}
