#!/bin/sh
npm install
npm run pack
mkdir -p $PREFIX/lib

if [[ "$OSTYPE" == "darwin"* ]]; then
    # Mac OSX
    mv release/mac/orca.app $PREFIX/lib
else
    echo "Linux not implemented"
fi

mkdir -p $PREFIX/bin
ORCA_ENTRY=$PREFIX/bin/orca
cp $RECIPE_DIR/bin/orca $ORCA_ENTRY
chmod +x $ORCA_ENTRY