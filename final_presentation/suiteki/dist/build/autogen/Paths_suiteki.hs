module Paths_suiteki (
    version,
    getBinDir, getLibDir, getDataDir, getLibexecDir,
    getDataFileName
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
catchIO = Exception.catch


version :: Version
version = Version {versionBranch = [0,1,0,0], versionTags = []}
bindir, libdir, datadir, libexecdir :: FilePath

bindir     = "/home/shinno/.cabal/bin"
libdir     = "/home/shinno/.cabal/lib/suiteki-0.1.0.0/ghc-7.6.3"
datadir    = "/home/shinno/.cabal/share/suiteki-0.1.0.0"
libexecdir = "/home/shinno/.cabal/libexec"

getBinDir, getLibDir, getDataDir, getLibexecDir :: IO FilePath
getBinDir = catchIO (getEnv "suiteki_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "suiteki_libdir") (\_ -> return libdir)
getDataDir = catchIO (getEnv "suiteki_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "suiteki_libexecdir") (\_ -> return libexecdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
