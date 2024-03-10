rm -rf dist
echo "[BUILD] dist dir removed"
mkdir dist
echo "[BUILD] dist dir created"

pnpm run build-pc
echo "[BUILD] build pc success"
mv ./packages/pc/out ./dist/pc
echo "[BUILD] pc output moved"

pnpm run build-h5
echo "[BUILD] build h5 success"
mv ./packages/h5/out ./dist/h5
echo "[BUILD] h5 output moved"

echo "[BUILD] build success"