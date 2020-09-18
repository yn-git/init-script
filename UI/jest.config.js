module.exports = {
    // test コードが入っているディレクトリ
    roots: ["tests/"],
    // test ファイル の search 条件
    testMatch: ["**/*.test.(ts|tsx)"],
    // ts / tsx をコンパイルせずにテストできるようにする
    transform: {
      "^.+\\.(ts|tsx)$": "ts-jest",
    },
    modulePaths: ["~/project/src/"],
  };