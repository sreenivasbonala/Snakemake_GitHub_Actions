rule prepare:
    output:
        "data.txt"
    shell:
        """
        echo "Gene Search Workflow" > {output}
        """

rule process:
    input:
        "data.txt"
    output:
        "processed.txt"
    shell:
        """
        tr '[:lower:]' '[:upper:]' < {input} > {output}
        """

rule summary:
    input:
        "processed.txt"
    output:
        "summary.txt"
    shell:
        """
        echo "Workflow completed successfully." > {output}
        cat {input} >> {output}
        """
