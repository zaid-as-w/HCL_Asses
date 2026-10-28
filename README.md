# HCL Assessment — Task 1: Cloud & Data Engineering Practical

A hands-on engineering repository documenting the completion of **Assessment Task 1** for the **HCL Training Program**, covering practical implementations across **SQL, Linux, AWS (Glue & Athena), and Microsoft Azure**.

---

## 📌 Repository Overview

This repository contains the code, data files, execution screenshots, and full practical report for **Assessment Task 1** assigned by the trainer. The assessment validates foundational and applied competencies required for Cloud & Data Engineering roles, spanning relational data modeling, operating system utilities, serverless ETL pipelines, serverless querying, and multi-cloud object storage.

---

## 📋 Assessment Breakdown by Technology

### 🔹 Task 1: Relational Database & SQL
* **Schema Design:** Implemented relational schema with `employees` and `departments` tables.
* **Integrity Constraints:** Configured primary keys and foreign key references.
* **Joins & Aggregations:** Applied `LEFT JOIN` combined with `GROUP BY`, `COUNT()`, and `COALESCE(MAX(salary), 0)` to handle departments without active employees.
* **Advanced Querying (in Report):** 15+ analytical queries covering `HAVING`, subqueries, CTEs (`WITH`), and window functions (`RANK()`, `DENSE_RANK()`).

📁 *Artifacts:* [`Task1-sql/Join-Aggregation.sql`](Task1-sql/Join-Aggregation.sql) & Execution Screenshot

---

### 🔹 Task 2: Linux CLI & Data Processing
* **File & Directory Management:** Command-line operations using `touch`, `nano`, `cd`, `ls`.
* **Pattern Matching & Text Filtering:** Employed `grep` to search text patterns within dataset files (`grep "hcl" data.txt`, `grep "1" data.txt`).
* **System Utilities (in Report):** File permissions (`chmod`), disk space monitoring (`df -h`, `du -h`), and environment auditing (`uname -a`, `whoami`, `pwd`).

📁 *Artifacts:* [`Task2-linux/data.txt`](Task2-linux/data.txt) & Execution Screenshot

---

### 🔹 Task 3: AWS Glue (Serverless ETL Pipeline)
* **Storage Layer:** Configured Amazon S3 with segregated `raw/` and `curated/` data zones.
* **IAM & Security:** Provisioned IAM role (`AWSglueEmployeerole`) with `AWSGlueServiceRole` and `AmazonS3FullAccess`.
* **Data Crawler & Catalog:** Automated schema inference via AWS Glue Crawler into the AWS Glue Data Catalog (`glue_training_db`).
* **Visual ETL Pipeline:** Designed and executed a visual ETL pipeline (`hcl-asses-glue-job`):
  * **Source:** Amazon S3 Data Catalog table.
  * **Transformation:** Filter and `Drop Fields` node to clean unwanted attributes.
  * **Target:** Optimized Apache Parquet output with Snappy compression written to the S3 `curated/` bucket.

📁 *Artifacts:* [`Task3-aws glue/Screenshot 2026-10-15 114552.png`](Task3-aws%20glue/)

---

### 🔹 Task 4: Amazon Athena (Serverless Data Analytics)
* **Interactive SQL on S3:** Connected Amazon Athena to the AWS Glue Data Catalog (`AwsDataCatalog`).
* **Ad-hoc Querying:** Executed standard ANSI SQL queries against S3-backed tables (`assessment_db.employees`) without provisioning database servers.
* **Performance Analysis:** Monitored query run-time, data scanned, and instant tabular results retrieval.

📁 *Artifacts:* [`Task4-athena/Screenshot 2026-10-15 120352.png`](Task4-athena/)

---

### 🔹 Task 5: Microsoft Azure Data Lake Storage (ADLS Gen2 / Blob Storage)
* **Cloud Storage Provisioning:** Set up an Azure Storage Account (`zaid123`).
* **Container Management:** Created hierarchical container (`mycontainer`) for cloud ingestion.
* **Blob Operations:** Uploaded and managed block blobs with Hot access tiers for immediate data processing workloads.

📁 *Artifacts:* [`Task5-azure dls/Screenshot 2026-10-15 121353.png`](Task5-azure%20dls/)

---

## 📑 Full Assessment Report

A comprehensive 23-page practical report is included in this repository:
* 📄 **File:** [`Assignment-PDF/Juved_MahammadRafik_Attar_2JI23CS056.pdf`](Assignment-PDF/Juved_MahammadRafik_Attar_2JI23CS056.pdf)
* **Contents:** ER diagrams, complete architectural workflows, query solutions with expected outputs, and step-by-step AWS and Azure cloud console walkthroughs.

---

## 🗂️ Repository Structure

```text
HCL_Asses/
├── Assignment-PDF/
│   └── Juved_MahammadRafik_Attar_2JI23CS056.pdf  # 23-page comprehensive report
├── Task1-sql/
│   ├── Join-Aggregation.sql                     # SQL schema, join & aggregation query
│   └── Screenshot 2026-10-15 110649.png          # MySQL Workbench execution output
├── Task2-linux/
│   ├── data.txt                                  # Sample data file
│   └── Screenshot 2026-10-15 111017.png          # Linux CLI & grep verification
├── Task3-aws glue/
│   └── Screenshot 2026-10-15 114552.png          # AWS Glue Visual ETL job graph
├── Task4-athena/
│   └── Screenshot 2026-10-15 120352.png          # Amazon Athena interactive query run
├── Task5-azure dls/
│   └── Screenshot 2026-10-15 121353.png          # Azure Blob/Data Lake storage container
├── .gitattributes                                # Binary format configuration
└── README.md                                     # Assessment overview & documentation
```

---

## 🛠️ Technology Stack Summary

| Domain | Tools & Technologies |
| :--- | :--- |
| **Relational Databases** | MySQL, SQL Workbench (Joins, Aggregations, Views, CTEs, Window Functions) |
| **Operating System** | Linux / Bash (File handling, text processing, `grep`, permissions, storage inspection) |
| **AWS Cloud** | Amazon S3, AWS Glue (Crawlers, Data Catalog, Visual ETL, Parquet/Snappy), Amazon Athena |
| **Microsoft Azure** | Azure Portal, Azure Blob Storage / Data Lake Storage Gen2 |

---

## 👤 Author
- **Juved MahammadRafik Attar** ([@zaid-as-w](https://github.com/zaid-as-w))
  - *Department of Computer Science & Engineering, Jain College of Engineering, Belagavi*
