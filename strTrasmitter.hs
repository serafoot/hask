type Bit = Int

bin2int :: [Bit] -> Int
bin2int bits = sum [w*b | (w,b) <- zip weights bits]
                   where weights = iterate (*2) 1 -- this is an infinite list

int2bin :: Int -> [Bit]
int2bin 0 = []
int2bin n = n `mod` 2:int2bin (n `div` 2)

-- make sure to work with 8 bit numbers
make8 :: [Bit] -> [Bit]
make8 bits = take 8 (bits ++ repeat(0))

