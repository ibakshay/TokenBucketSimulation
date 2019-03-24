//
// This file is part of an OMNeT++/OMNEST simulation example.
//
// Copyright (C) 2006-2015 OpenSim Ltd
//
// This file is distributed WITHOUT ANY WARRANTY. See the file
// `license' for details on this and other legal matters.
//

import org.omnetpp.queueing.Queue;
import org.omnetpp.queueing.Sink;
import org.omnetpp.queueing.Source;
import org.omnetpp.queueing.TokenGenerator;

//
// This simple queueing network only contains a source, a FIFO queue and a sink.
//
network SimpleQueue
{
    parameters:
        @display("i=block/network2");
    submodules:
        stationB: Sink {
            @display("p=343,211");
        }
        queue: Queue {
            @display("p=185,211");
        }
        stationA: Source {
            @display("p=31,211");
        }
        TokenGenerator: TokenGenerator {
            @display("p=185,110");
        }
    connections:
        stationA.out --> queue.in++;

        queue.out --> stationB.in++;

        TokenGenerator.out --> queue.in++;
}
