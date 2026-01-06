function PrimerIncrement(primer)
    print("PRIMER INCREMENT")
    local primer = Tracker:FindObjectForCode(primer)
    local primers = Tracker:FindObjectForCode("albhedprimers")
    if (primer.Active) then
        primers.AcquiredCount = primers.AcquiredCount + 1
    else
        primers.AcquiredCount = primers.AcquiredCount - 1
    end
end