// Part 1
// Setting Up the Scene

// 1. Define constants
const CANoeS = 12;
const TENTS = 6;
const HIKERS = 24;
const FLAGS = CANoeS * 2;
const CAMPSITES = 6;

// 2. Set up the environment
let lake = {
  name: 'Coldwater Lake',
  location: 'Northern Michigan',
  depth: 44,
  fish: ['bass', 'trout', 'perch'],
  canoes: CANoeS
};

let equipment = {
  tents: TENTS,
  hikers: HIKERS,
  flags: FLAGS,
  campsites: CAMPSITES  
};

// 3. Create a map object
let map = {
  scale: '1:500',
  topography: 'hilly',
  path:  {
    type: 'loop',
    distance: 22.5,
    waypoints: [
      'start',
      'south ridge',
      'river crossing',
      'east peak',
      'northern meadows',
      'west peak',
      'end'
    ]
  }
};

// 4. Create the itinerary 
let itinerary = [
  {
    day: 1,
    location: 'start',
    activity: 'set up camp'
  },
  {
    day: 2,
    location: 'south ridge',
    activity: 'hike to the top'
  },
  {
    day: 3,
    location: 'river crossing',
    activity: 'canoe the river'
  },
  {
    day: 4,
    location: 'east peak',
    activity: 'hike to the summit'
  },
  {
    day: 5,
    location: 'northern meadows',
    activity: 'explore the meadows'
  },
  {
    day: 6,
    location: 'west peak',
    activity: 'hike to the top'
  },
  {
    day: 7,
    location: 'end',
    activity: 'tear down camp'
  }
];

// Part 2
// On the Adventure

// 5. Print welcome message
console.log('Welcome to The Great Outdoor Adventure at Coldwater Lake!');

// 6. Print lake information
console.log(`Coldwater Lake is located in ${lake.location} and is a ${lake.depth} ft. deep lake with ${lake.fish.length} kinds of fish.`);

// 7. Introduce available equipment
console.log(`You will have access to ${ equipment.tents } tents, ${ equipment.hikers } hikers, and ${ equipment.flags } flags for the journey. We have ${ equipment.campsites } campsites set up along the way.`);

// 8. Print map information
console.log(`The scale of the map is ${ map.scale } and the terrain is ${ map.topography }. Our journey will take us on a ${ map.path.type } path that is ${ map.path.distance } miles long.`);

// 9. Print the itinerary
console.log('Here is your itinerary:');
itinerary.forEach(day => {
  console.log(`Day ${ day.day }: ${ day.activity } at ${ day.location }`);
});

// 10. Prompt hikers to begin
console.log('Let the adventure begin!');