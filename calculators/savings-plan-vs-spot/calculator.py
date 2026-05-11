#!/usr/bin/env python3
def calc(monthly_spend):
    sp_saving = monthly_spend * 0.7 * 0.3
    print(f"Estimated SP Monthly Saving: ${sp_saving:,.2f}")

if __name__ == "__main__":
    calc(50000)
