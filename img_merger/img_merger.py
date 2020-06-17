import subprocess
from pathlib import Path

cwd = Path(".")


def main():
    images = []
    for file in cwd.iterdir():
        if file.is_file() and file.suffix != ".py":
            images.append(str(file))
    images = sorted(images)
    def lol(lst, sz): return [lst[i:i+sz] for i in range(0, len(lst), sz)]
    images = lol(images, 4)
    counter = 1
    for quad_imgs in images:
        command = "montage -geometry 595x842+0+0 {} {} {} {} {}".format(
            quad_imgs[0], quad_imgs[1], quad_imgs[2], quad_imgs[3], "./pdfs/"+str(counter)+"_file.jpg")
        subprocess.run(command.split(" "), check=True)
        convert_pdf_command = "convert -page A4 {} {}".format(
            "./pdfs/"+str(counter)+"_file.jpg", "./pdfs/"+str(counter)+"_file.pdf")
        counter += 1
        subprocess.run(convert_pdf_command.split(" "), check=True)
        pass

    subprocess.run(["rm", "./pdf/*.jpg"], check=True)


if __name__ == "__main__":
    main()
