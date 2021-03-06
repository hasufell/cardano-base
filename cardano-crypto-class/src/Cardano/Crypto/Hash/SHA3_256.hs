{-# LANGUAGE PackageImports #-}

-- | Implementation of the SHA3_256 hashing algorithm.
module Cardano.Crypto.Hash.SHA3_256
  ( SHA3_256
  )
where

import Cardano.Crypto.Hash.Class
import qualified "cryptonite" Crypto.Hash as H
import qualified Data.ByteArray as BA

data SHA3_256

instance HashAlgorithm SHA3_256 where
  hashAlgorithmName _ = "sha3-256"
  sizeHash _ = 32
  digest _ = convert . H.hash

convert :: H.Digest H.SHA3_256 -> ByteString
convert = BA.convert
