.L / home / roman / Dokumente / Sources / lc - meter / scripts / calc - lc -
    tank.c

    double ind = 100e-06 double cap = 100e-09

    output_num("Capacitance (F)", cap) output_num("Inductance (H)", ind)

        double lambda = (2 * 3.14159265358979323846264338 * sqrt(ind * cap))

            output_num("Frequency (Hz)", 1 / lambda);
