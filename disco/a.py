if __name__ == "__main__":
  k = int(input())
  s = "DiscoPresentsDiscoveryChannelProgrammingContest2016"
  len = len(s)
  start = 0
  while len > start:
    print(s[start:start+k])
    start += k