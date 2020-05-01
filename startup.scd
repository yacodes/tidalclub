(
  s.options.numBuffers = 2**24;
  s.options.memSize = 2**20;
  s.options.maxNodes = 2**20;
  s.options.numOutputBusChannels = 2;
  s.options.numInputBusChannels = 0;

  s.waitForBoot {
    ~dirt = SuperDirt(2, s);
    ~dirt.loadSoundFiles;
    s.sync;
    ~dirt.start(57120, 24.collect({0}));
  };

  s.latency = 0.01;
)