// Sources/ClientApp/main.swift
import HelloModule

print("Init!")
let instance = HelloProvider()
let greeting = instance.greet(name: "World")
print(greeting)
print("Done!")
