// 20PW14
// DNA to RNA Transcription

const DNA = 'GCAT';
const DNAtoRNA = (DNA) => {
    return DNA.replace(/T/g, "U");
};
console.log(DNAtoRNA(DNA));