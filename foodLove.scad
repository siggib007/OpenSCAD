// Base plate: 
cube([120, 150, 3]);

// Raised design from SVG
translate([-5, -120, 3])  // Lift above the base and align to base
  linear_extrude(height = 2)
    import("C:/Users/siggi/OneDrive - Öruggt Net ehf/docs/flp2.svg");