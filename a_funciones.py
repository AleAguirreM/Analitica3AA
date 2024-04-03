{
  "nbformat": 4,
  "nbformat_minor": 0,
  "metadata": {
    "colab": {
      "provenance": [],
      "authorship_tag": "ABX9TyN4iBWwXMlrt9PwO/34y6NV",
      "include_colab_link": true
    },
    "kernelspec": {
      "name": "python3",
      "display_name": "Python 3"
    },
    "language_info": {
      "name": "python"
    }
  },
  "cells": [
    {
      "cell_type": "markdown",
      "metadata": {
        "id": "view-in-github",
        "colab_type": "text"
      },
      "source": [
        "<a href=\"https://colab.research.google.com/github/AleAguirreM/Analitica3AA/blob/main/a_funciones.py\" target=\"_parent\"><img src=\"https://colab.research.google.com/assets/colab-badge.svg\" alt=\"Open In Colab\"/></a>"
      ]
    },
    {
      "cell_type": "code",
      "execution_count": null,
      "metadata": {
        "id": "UJkt4WGMNN2b"
      },
      "outputs": [],
      "source": [
        "def ejecutar_sql (nombre_archivo, cur):\n",
        "    sql_file=open(nombre_archivo)\n",
        "    sql_as_string=sql_file.read()\n",
        "    sql_file.close\n",
        "    cur.executescript(sql_as_string)"
      ]
    }
  ]
}