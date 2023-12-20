fn main() {
    println!("hello world!");
}

#[no_mangle]
pub extern "C" fn lua_new() -> *mut mlua::Lua {
    let lua = mlua::Lua::new();
    Box::into_raw(Box::new(lua))
}

#[no_mangle]
pub unsafe extern "C" fn lua_execute(lua: *mut mlua::Lua, to_execute: *const std::ffi::c_char) {
    // casting the raw pointer of the created lua instance back to a usable Rust struct
    let lua: &mut mlua::Lua = &mut *lua;
    // converting the c string into a `CStr` (which then can be converted to a `String`)
    let to_execute = std::ffi::CStr::from_ptr(to_execute);

    // execute the input code via the lua interpreter
    if let Err(err) = lua.load(&to_execute.to_string_lossy().to_string()).exec() {
        // because emscripten wraps stderr, we are able to catch the error on the js
        // side just fine
        eprintln!("{}", err)
    }
}