#[cfg(test)]
mod tests {
    #[test]
    fn lua_test() {
        let lua = mlua::Lua::new();
        lua.load("print(\"test\")").exec().unwrap();
    }
}
