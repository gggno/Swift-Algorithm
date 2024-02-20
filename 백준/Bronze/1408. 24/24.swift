import Foundation

let now = readLine()!.split(separator: ":").map{Int($0)!}
let nowH = now[0], nowM = now[1], nowS = now[2]

let misson = readLine()!.split(separator: ":").map{Int($0)!}
let missonH = misson[0], missonM = misson[1], missonS = misson[2]

let nowTime = (nowH * 60 * 60) + (nowM * 60) + (nowS)
let missonTime = (missonH * 60 * 60) + (missonM * 60) + (missonS)

var t = missonTime - nowTime

if t < 0 {
    t += 60*60*24
}

var h =  t / 3600 < 10 ? "0" + "\(t / 3600)" : "\(t / 3600)"
var m = (t % 3600) / 60 < 10 ? "0" + "\((t % 3600) / 60)" : "\((t % 3600) / 60)"
var s = t % 60 < 10 ? "0" + "\(t % 60)" : "\(t % 60)"

print("\(h):\(m):\(s)")