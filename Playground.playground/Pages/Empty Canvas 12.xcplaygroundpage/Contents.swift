//: [Previous](@previous) / [Next](@next)
/*:
## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 7 and 8.
 */
let preferredWidth = 400
let preferredHeight = 600
/*:
 ## Required code
 
 Lines 16 to 30 are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport
import CanvasGraphics

// Create canvas
let canvas = Canvas(width: preferredWidth, height: preferredHeight)

// Create a turtle that can draw upon the canvas
let turtle = Tortoise(drawingUpon: canvas)

// Create a pen that can draw upon the canvas
let p = Pen(drawingUpon: canvas)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas

/*:
 ## Optional code
 
 Below are two generally helpful configurations.
 
 If you do not wish to work in all four quadrants of the Cartesian plane, comment out the code on line 44.
 
 If you do not wish to see a grid, comment out the code on line 48.
 
 */

// Move the origin from the bottom-left corner of the canvas to it's centre point

// Show a grid
canvas.drawAxes(withScale: true, by: 20, color: .black)

/*:
 ## Add your code
 
 Beginning on line 61, you can add your own code.
  
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.

 */
//add custom colours

//red
let one = Color(hue: 347,
                   saturation: 67,
                   brightness: 62,
                   alpha: 100)
//green
let two = Color(hue: 187,
                   saturation: 65,
                   brightness: 41,
                   alpha: 100)
//blue
let three = Color(hue: 75,
                   saturation: 67,
                   brightness: 64,
                   alpha: 100)





canvas.highPerformance = true

//Add gradient
canvas.defaultLineWidth = 5
for value in stride(from: 0,
                    through: 100,
                    by:1) {
    
    let currentcolour = Color(hue: 187,
                              saturation: 65,
                              brightness: value,
                              alpha: 100)
    
    canvas.lineColor = currentcolour
    
    canvas.drawLine(from: Point(x: value * 5, y: 0), to: Point(x: value * 5, y: 400))
    

}

canvas.drawShapesWithFill = false
canvas.drawShapesWithBorders = true
canvas.defaultBorderWidth = 10
canvas.borderColor = three

//add transparent dots
for horizontalPosition in stride(from: 20, through: 400, by: 45) {
    
    for verticalPosition in stride(from: 20, through: 400, by: 45) {
        
   
    canvas.drawEllipse(at: Point(x: horizontalPosition, y: verticalPosition), width: 45, height: 45)
    
    
    }
    
}




//add the greed dots that hide the openings
for horizontalPosition in stride(from: 0, through: 420, by: 45) {
    
    for verticalPosition in stride(from: 0, through: 420, by: 45) {
        
        
    canvas.drawEllipse(at: Point(x: horizontalPosition, y: verticalPosition), width: 10, height: 10)
    
    
    }
    
}
//add border to transparent dots
canvas.defaultBorderWidth = 2
canvas.borderColor = two
for horizontalPosition in stride(from: 20, through: 400, by: 45) {
    
    for verticalPosition in stride(from: 20, through: 400, by: 45) {
        
        
    canvas.drawEllipse(at: Point(x: horizontalPosition, y: verticalPosition), width: 35, height: 35)
    
    
    }
    
}

canvas.fillColor = one

canvas.defaultBorderWidth = 3


//add rectangle behind text
canvas.borderColor = three
canvas.drawShapesWithFill = true
canvas.drawRectangle(at: Point(x: 0, y: 400), width: 400, height: 200)

//top circles
for horizontalPosition in stride(from: 20, through: 420, by: 45) {
    
    for verticalPosition in stride(from: 570, through: 570, by: 45) {
        
        //this is a selection statement that uses the condition (if x = every other circle then it will be blue. else it will be green. same with the border colours, just the oposite.
        if horizontalPosition == 65 ||
            horizontalPosition == 155 ||
            horizontalPosition == 245 ||
            horizontalPosition == 335 ||
            horizontalPosition == 425 {
            
            canvas.borderColor = two
            canvas.fillColor = three
            
        } else {
            canvas.borderColor = three
            canvas.fillColor = two
        }
    

        
        canvas.drawEllipse(at: Point(x: horizontalPosition, y: verticalPosition), width: 30, height: 30)
        
    }
    
}

//
//add the "4PF" logo
canvas.defaultLineWidth = 7
canvas.lineColor = two
canvas.drawLine(from: Point(x: 322, y: 495.5), to: Point(x: 342, y: 495.5))
           
//blue backcolour
canvas.defaultLineWidth = 9
canvas.lineColor = two
canvas.drawLine(from: Point(x: 324.5, y: 515.5), to: Point(x: 324.5, y: 475.5))

//blue backcolour
canvas.textColor = two
canvas.drawText(message: "4", at: Point(x: 302, y: 468), size: 60, kerning: 0)

canvas.textColor = .black
canvas.drawText(message: "4", at: Point(x: 300, y: 470), size: 60, kerning: 0)


canvas.defaultLineWidth = 9
canvas.lineColor = .black
canvas.drawLine(from: Point(x: 322.5, y: 517.5), to: Point(x: 322.5, y: 477.5))

canvas.lineColor = .black
canvas.defaultLineWidth = 7



canvas.lineColor = .black
canvas.drawLine(from: Point(x: 320, y: 497.5), to: Point(x: 340, y: 497.5))

//blue backcolour
canvas.textColor = two
canvas.drawText(message: "P", at: Point(x: 332, y: 498), size: 20, kerning: 0)


canvas.textColor = .black
canvas.drawText(message: "P", at: Point(x: 330, y: 500), size: 20, kerning: 0)

//blue backcolour
canvas.textColor = two
canvas.drawText(message: "F", at: Point(x: 332, y: 468), size: 20, kerning: 0)


canvas.textColor = .black
canvas.drawText(message: "F", at: Point(x: 330, y: 470), size: 20, kerning: 0)







canvas.lineColor = three

//add lines 
canvas.defaultLineWidth = 2
canvas.drawLine(from: Point(x: 0, y: 540), to: Point(x: 400, y: 540))

canvas.drawLine(from: Point(x: 0, y: 460), to: Point(x: 400, y: 460))

canvas.textColor = two
canvas.drawText(message: "The Voice of the Heros", at: Point(x: 38, y: 410), size: 30, kerning: 0)

canvas.textColor = .black
canvas.drawText(message: "The Voice of the Heros", at: Point(x: 36, y: 412), size: 30, kerning: 0)

canvas.textColor = two
canvas.drawText(message: "Sep 03, 2021    Lil Baby / Lil Durk ", at: Point(x: 32, y: 508), size: 15, kerning: 0)
canvas.textColor = .black
canvas.drawText(message: "Sep 03, 2021    Lil Baby / Lil Durk ", at: Point(x: 30, y: 510), size: 15, kerning: 0)



//high preformence off 
canvas.highPerformance = false

