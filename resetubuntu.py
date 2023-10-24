import PySimpleGUI as sg
import subprocess

# Opret GUI-layout
layout = [
    [sg.Text(" Nulstilling af indstillinger", font=("Any 13"))],
    [sg.Button("Backup Indstillinger")],
    [sg.Button("Nulstil Indstillinger")],
    [sg.Button("Gendan Indstillinger fra Backup")],
]

# Opret vinduet
window = sg.Window("NULSTILL UBUNTU", layout, size=(700, 500))

# Hovedloop
while True:
    event, values = window.read()

    if event == sg.WIN_CLOSED:
        break
    elif event == "Backup Indstillinger":
        # Kald kommando for at tage en backup af indstillinger
        subprocess.run(["dconf", "dump", "/", ">", "gnome-settings-backup.dconf"])
        sg.popup("Indstillinger er blevet sikkerhedskopieret i 'gnome-settings-backup.dconf'")
    elif event == "Nulstil Indstillinger":
        # Kald kommando for at nulstille indstillinger
        subprocess.run(["dconf", "reset", "-f", "/"])
        sg.popup("Indstillinger er blevet nulstillet.")
    elif event == "Gendan Indstillinger fra Backup":
        # Kald kommando for at gendanne indstillinger fra backupfilen
        subprocess.run(["dconf", "load", "/", "<", "gnome-settings-backup.dconf"])
        sg.popup("Indstillinger er blevet gendannet fra backupfilen.")

window.close()