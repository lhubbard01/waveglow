import subprocess

def main():
    with  open("requirements.txt","r") as f:
        package_list = f.readlines()
        for i in range(len(package_list)):
            subprocess.run("conda install -c " + package_list[i].strip("\n"), shell=True)
if __name__ == "__main__":
    main()
