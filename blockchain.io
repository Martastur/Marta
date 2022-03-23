addBlock(block) {
        // Since we are adding a new block, prevHash will be the hash of the old latest block
        block.prevHash = this.getLastBlock().hash;
        // Since now prevHash has a value, we must reset the block's hash
        block.hash = block.getHash();

        // Object.freeze ensures immutability in our code
        this.chain.push(Object.freeze(block));
    }
