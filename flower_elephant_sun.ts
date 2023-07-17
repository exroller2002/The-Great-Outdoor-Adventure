// PLAYER CLASS
class Player {
  private score: number;
  private health: number;
  private charisma: number;
  private agility: number;
  private strength: number;
  private level: number;

  constructor(score: number, health: number, charisma: number, agility: number, strength: number, level: number) {
    this.score = score;
    this.health = health;
    this.charisma = charisma;
    this.agility = agility;
    this.strength = strength;
    this.level = level;
  }

  // Getters
  public getScore(): number {
    return this.score;
  }
  public getHealth(): number {
    return this.health;
  }
  public getCharisma(): number {
    return this.charisma;
  }
  public getAgility(): number {
    return this.agility;
  }
  public getStrength(): number {
    return this.strength;
  }
  public getLevel(): number {
    return this.level;
  }

  // Setters
  public setScore(score: number): void {
    this.score = score;
  }
  public setHealth(health: number): void {
    this.health = health;
  }
  public setCharisma(charisma: number): void {
    this.charisma = charisma;
  }
  public setAgility(agility: number): void {
    this.agility = agility;
  }
  public setStrength(strength: number): void {
    this.strength = strength;
  }
  public setLevel(level: number): void {
    this.level = level;
  }

  public climbMountain(): void {
    this.score += 10;
    this.health -= 10;
  }

  public floatDownRiver(): void {
    this.score += 8;
    this.health -= 5;
  }

  public fish(): void {
    this.score += 5;
    this.health -= 3;
  }

  public chopWood(): void {
    this.score += 2;
    this.health -= 1;
  }
}

// WORLD CLASS
class World {
  private terrain: string;
  private difficulty: string;
  private player: Player;

  constructor(terrain: string, difficulty: string, player: Player) {
    this.terrain = terrain;
    this.difficulty = difficulty;
    this.player = player;
  }

  public getTerrain(): string {
    return this.terrain;
  }
  public getDifficulty(): string {
    return this.difficulty;
  }
  public getPlayer(): Player {
    return this.player;
  }
  public setPlayer(player: Player): void {
    this.player = player;
  }
}

// MAP CLASS
class Map {
  private x: number;
  private y: number;

  constructor(x: number, y: number) {
    this.x = x;
    this.y = y;
  }

  public getX(): number {
    return this.x;
  }
  public getY(): number {
    return this.y;
  }
}

// GAME CLASS
class Game {
  private world: World;
  private map: Map;
  private active: boolean;

  constructor(world: World, map: Map, active: boolean) {
    this.world = world;
    this.map = map;
    this.active = active;
  }

  public getWorld(): World {
    return this.world;
  }
  public getMap(): Map {
    return this.map;
  }
  public getActive(): boolean {
    return this.active;
  }
  public setActive(active: boolean): void {
    this.active = active;
  }
}

// ITEM CLASS
class Item {
  private name: string;
  private description: string;
  private healthBonus: number;
  private strengthBonus: number;
  private charismaBonus: number;
  private agilityBonus: number;

  constructor(name: string, description: string, healthBonus: number, strengthBonus: number, charismaBonus: number, agilityBonus: number) {
    this.name = name;
    this.description = description;
    this.healthBonus = healthBonus;
    this.strengthBonus = strengthBonus;
    this.charismaBonus = charismaBonus;
    this.agilityBonus = agilityBonus;
  }

  // Getters
  public getName(): string {
    return this.name;
  }
  public getDescription(): string {
    return this.description;
  }
  public getHealthBonus(): number {
    return this.healthBonus;
  }
  public getStrengthBonus(): number {
    return this.strengthBonus;
  }
  public getCharismaBonus(): number {
    return this.charismaBonus;
  }
  public getAgilityBonus(): number {
    return this.agilityBonus;
  }

}

// ANIMAL CLASS
class Animal {
  private name: string;
  private health: number;
  private strength: number;
  private agility: number;

  constructor(name: string, health: number, strength: number, agility: number) {
    this.name = name;
    this.health = health;
    this.strength = strength;
    this.agility = agility;
  }

  // Getters
  public getName(): string {
    return this.name;
  }
  public getHealth(): number {
    return this.health;
  }
  public getStrength(): number {
    return this.strength;
  }
  public getAgility(): number {
    return this.agility;
  }
}

// ACTION CLASS
class Action {
  private name: string;
  private type: string;

  constructor(name: string, type: string) {
    this.name = name;
    this.type = type;
  }

  // Getters
  public getName(): string {
    return this.name;
  }
  public getType(): string {
    return this.type;
  }

}

// ENEMY CLASS
class Enemy {
  private name: string;
  private health: number;
  private strength: number;
  private agility: number;
  private scoreValue: number;

  constructor(name: string, health: number, strength: number, agility: number, scoreValue: number) {
    this.name = name;
    this.health = health;
    this.strength = strength;
    this.agility = agility;
    this.scoreValue = scoreValue;
  }

  // Getters
  public getName(): string {
    return this.name;
  }
  public getHealth(): number {
    return this.health;
  }
  public getStrength(): number {
    return this.strength;
  }
  public getAgility(): number {
    return this.agility;
  }
  public getScoreValue(): number {
    return this.scoreValue;
  }

}

// MAIN FUNCTION
function startGame(): void {
  // Create Player
  const player = new Player(0, 100, 5, 10, 10, 1);

  // Create World
  const world = new World("forest", "hard", player);

  // Create Map
  const map = new Map(5, 5);

  // Create Game
  const game = new Game(world, map, true);

  // Create Items
  const healthPotion = new Item("Health Potion", "Restores 10 health points", 10, 0, 0, 0);
  const strengthPotion = new Item("Strength Potion", "Increases strength by 2 points", 0, 2, 0, 0);
  const charismaPotion = new Item("Charisma Potion", "Increases charisma by 2 points", 0, 0, 2, 0);
  const agilityPotion = new Item("Agility Potion", "Increases agility by 2 points", 0, 0, 0, 2);

  // Create Animal
  const bear = new Animal("Bear", 50, 15, 5);

  // Create Actions
  const attack = new Action("Attack", "Combat");
  const flee = new Action("Flee", "Escape");

  // Create Enemy
  const wolf = new Enemy("Wolf", 25, 10, 6, 20);

  // Start Game Loop
  while (game.getActive()) {
    // Player chooses action
    const action = prompt("What action would you like to take? (Attack or Flee)");

    if (action === attack.getName()) {
      // Player attacks enemy
      wolf.health -= player.getStrength();
      player.health -= wolf.getStrength();

      if (wolf.health <= 0) {
        // Player defeats enemy 
        console.log("You have defeated the wolf!");
        player.setScore(player.getScore() + wolf.getScoreValue());
        player.setLevel(player.getLevel() + 1);
      } else if (player.getHealth() <= 0) {
        // Player dies 
        console.log("You have been defeated by the wolf!");
        game.setActive(false);
      }
    } else if (action === flee.getName()) {
      // Player attempts to flee
      const fleeChance: number = Math.ceil(Math.random() * 10);
      if (fleeChance > wolf.getAgility()) {
        // Player successfully flees
        console.log("You have successfully escaped the wolf!");
        player.setScore(player.getScore() + 5);
      } else {
        // Player fails to flee
        console.log("You failed to escape the wolf!");
        player.health -= wolf.getStrength();

        if (player.getHealth() <= 0) {
          // Player dies
          console.log("You have been defeated by the wolf!");
          game.setActive(false);
        }
      }
    }

    // Player finds item
    const itemFindChance: number = Math.ceil(Math.random() * 10);
    if (itemFindChance > 6) {
      // Player finds item
      const randomItem = Math.ceil(Math.random() * 4);

      if (randomItem === 1) {
        console.log("You have found a Health Potion!");
        player.setHealth(player.getHealth() + healthPotion.getHealthBonus());
      } else if (randomItem === 2) {
        console.log("You have found a Strength Potion!");
        player.setStrength(player.getStrength() + strengthPotion.getStrengthBonus());
      } else if (randomItem === 3) {
        console.log("You have found a Charisma Potion!");
        player.setCharisma(player.getCharisma() + charismaPotion.getCharismaBonus());
      } else if (randomItem === 4) {
        console.log("You have found an Agility Potion!");
        player.setAgility(player.getAgility() + agilityPotion.getAgilityBonus());
      }
    }

    // Player finds animal
    const animalFindChance: number = Math.ceil(Math.random() * 10);
    if (animalFindChance > 8) {
      // Player finds animal
      console.log("You have encountered a bear!");
      player.setHealth(player.getHealth() - bear.getStrength());

      if (player.getHealth() <= 0) {
        // Player dies 
        console.log("You have been killed by the bear!");
        game.setActive(false);
      }
    }
  }

  // Game Over
  game.setActive(false);
  console.log("Game Over!");
}