{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExtendedDefaultRules #-}
module MyAntigen where

import Antigen (AntigenConfiguration (..), bundle, antigen)
import Shelly (shelly)

bundles =
  [
    bundle "chrissicool/zsh-256color"
  , bundle "zirrostig/k"
  , bundle "Tarrasch/zsh-bd"
  , bundle "Tarrasch/zsh-colors"
  , bundle "Tarrasch/zsh-command-not-found"
  , bundle "Tarrasch/zsh-functional"
  , bundle "zsh-users/zsh-syntax-highlighting"
  , bundle "zsh-users/zsh-history-substring-search"
  ]

config = AntigenConfiguration bundles

main :: IO ()
main = shelly $ antigen config

