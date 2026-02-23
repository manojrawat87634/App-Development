void helper(
  List<List<int>> mat,
  int r,
  int c,
  String p,
  List<String> ans,
  List<List<bool>> vis,
) {
  int n = mat.length;
  if (r < 0 ||
      c < 0 ||
      r >= n ||
      c >= n ||
      mat[r][c] == 0 ||
      mat[n - 1][n - 1] == 0 ||
      vis[r][c] == true) {
    return;
  }
  if (r == n - 1 && c == n - 1) {
    ans.add(p);
    // return;
  }
  vis[r][c] = true;
  helper(mat, r, c - 1, "${p} L", ans, vis); // left
  helper(mat, r, c + 1, "${p} R", ans, vis); // right
  helper(mat, r - 1, c, "${p} T", ans, vis); // top
  helper(mat, r + 1, c, "${p} B", ans, vis); // bottom
  vis[r][c] = false;
}

List<String> findPath(List<List<int>> mat) {
  List<String> ans = [];
  String path = "";
  List<List<bool>> vis = List.generate(
    4,
    (_) => List.generate(4, (_) => false),
  );
  helper(mat, 0, 0, path, ans, vis);
  return ans;
}

void main() {
  List<List<int>> mat = [
    [1, 0, 0, 0],
    [1, 1, 0, 1],
    [1, 1, 0, 0],
    [0, 1, 1, 1],
  ];
  List<String> ans = findPath(mat);
  for (String path in ans) {
    print("$path");
  }
}
