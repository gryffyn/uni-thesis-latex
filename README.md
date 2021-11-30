# Uni Dissertation/Thesis/Report Latex Template

A (relatively) simple template for marking up a dissertation, thesis, or report.

**[Demo PDF](https://git.neveris.one/gryffyn/uni-thesis-latex/raw/branch/main/main.pdf)**

## Requirements
* Some TeX distribution.
* Inkscape
* biber
* xelatex

## Usage

Fork this repo, then edit accordingly.

Alternatively, create an empty git repository `$MYREPO`, and run

```bash
git clone https://git.neveris.one/gryffyn/uni-thesis-latex $MYREPOTITLE
cd $MYREPOTITLE
git remote set-url origin $MYREPO
git push -u origin main
```

## Building

To build using the default `xelatex` and `biber`, run

```
make pdf
```

To build with a different latex engine, run

```
make ENGINE=<custom_engine> pdf
```

It is also possible to build using the `tectonic` engine

```
make tectonic-pdf
```

## Docker/CI
A Docker image that is built around compiling this template is available at [gryffyn/texlive-xetex](https://hub.docker.com/r/gryffyn/texlive-xetex).

The `build.sh` script is included for ease of use with the above Docker image, but can be removed in favour of the Makefile.

## License
This template and all images contained in it are copyright [CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/).
