_default:
  @just --list

palette := "palettes/eldritch-cthulhu.json"
accents := "great-old-green watery-tomb-blue pustule-pink lovecraft-purple rlyeh-red dreaming-orange gold-of-yuggoth sunken-depths lighthouse-white"

# Remove generated files
clean:
  rm -rf pngs/ hl/ dist/ svgs/

# Build all cursor variants using the given palette
build p=palette a=accents:
  ./build -p {{p}} -a '{{a}}'

# Build a single accent variant
single a accent p=palette:
  ./build -p {{p}} -a '{{a}}'

# Zip all cursor themes in dist/
zip:
  ./scripts/create_zips
