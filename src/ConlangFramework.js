// A Framework for generating Ithkuilic languages
// Conlang Item: parent class for categories and category values
class CLItem {
    constructor(name, abbrev, description) {
        this.name = name;
        this.abbrev = abbrev;
        this.description = description;
    }
}
// Conlang Category: container with lookup methods for category values
class CLCategory extends CLItem {
    constructor(name, abbrev, description, values = []) {
        super(name, abbrev, description);
        this.values = values;
    }
}
//  Conlang Value: record for a single category value
class CLValue extends CLItem {
    constructor(name, abbrev, description, value) {
        super(name, abbrev, description);
        this.value = value;
    }
}
