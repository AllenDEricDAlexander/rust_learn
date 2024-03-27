trait AbstractK {
    fn new(r: f64, p: f64) -> Self;
    fn r(&self) -> f64;
    fn p(&self) -> f64;
    fn is_inside(&self) -> bool;
    fn overlap(&self) -> bool;
}

struct K2D {
    r: f64,
    p: f64,
}

impl AbstractK for K2D {
    fn new(r: f64, p: f64) -> Self {
        K2D { r, p }
    }

    fn r(&self) -> f64 {
        self.r
    }

    fn p(&self) -> f64 {
        self.p
    }

    fn is_inside(&self) -> bool {
        unimplemented!()
    }

    fn overlap(&self) -> bool {
        unimplemented!()
    }
}

struct K3D {
    r: f64,
    p: f64,
}

impl AbstractK for K3D {
    fn new(r: f64, p: f64) -> Self {
        K3D { r, p }
    }

    fn r(&self) -> f64 {
        self.r
    }

    fn p(&self) -> f64 {
        self.p
    }

    fn is_inside(&self) -> bool {
        unimplemented!()
    }

    fn overlap(&self) -> bool {
        unimplemented!()
    }
}

struct SquareK {
    r: f64,
    p: f64,
}

impl AbstractK for SquareK {
    fn new(r: f64, p: f64) -> Self {
        SquareK { r, p }
    }

    fn r(&self) -> f64 {
        self.r
    }

    fn p(&self) -> f64 {
        self.p
    }

    fn is_inside(&self) -> bool {
        unimplemented!()
    }

    fn overlap(&self) -> bool {
        unimplemented!()
    }
}

struct CubeK {
    r: f64,
    p: f64,
}

impl AbstractK for CubeK {
    fn new(r: f64, p: f64) -> Self {
        CubeK { r, p }
    }

    fn r(&self) -> f64 {
        self.r
    }

    fn p(&self) -> f64 {
        self.p
    }

    fn is_inside(&self) -> bool {
        unimplemented!()
    }

    fn overlap(&self) -> bool {
        unimplemented!()
    }
}