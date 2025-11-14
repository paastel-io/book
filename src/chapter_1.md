# Introdução

PaaStel is an open source Platform as a Service (PaaS) that adds a
developer-friendly layer to any Kubernetes cluster, making it easy to deploy
and manage applications on your own servers.

The name refers to Brazil's most beloved food ([pastel][comida]), but it also
has a meaning in the world of technology as a _"workaround"_ in the code, like
[Go Horse][gohorse].

## Componenets

| Name             | Description                                                       |
| ---------------- | ----------------------------------------------------------------- |
| Controller       | Workflow API server                                               |
| Builder          | Git server and source-to-image component                          |
| Dockerbuilder    | The builder for Docker based applications                         |
| Registry         | The Docker registry                                               |
| Router           | The HTTP/s edge router                                            |

## Setup Dev Environment

[comida]: https://www.google.com/search?sca_esv=4af503ebc609abd2&sxsrf=AE3TifN8HzRkM3niW24T0M_IaizY1XnEKQ:1763072027670&udm=2&fbs=AIIjpHxU7SXXniUZfeShr2fp4giZ1Y6MJ25_tmWITc7uy4KIeioyp3OhN11EY0n5qfq-zEMZldv_eRjZ2XLYc5GnVnMEpKlG2EjNHY-lAPkrr7LqoqaPfn0KFyQf9ivWI6pPrCJD6tdwIoQhHlyJC4hN4mfSQEq4E60YameCNWrpWo77t4OJoeIPr4dcGCMMusjsSey1wbn84aPZ05Imr3IwEmJaZVd2YA&q=pastel&sa=X&ved=2ahUKEwjp07CPk_CQAxW7JbkGHWPKEgoQtKgLegQIIBAB&biw=1553&bih=949&dpr=1.3
[gohorse]: https://medium.com/@dekaah/22-axioms-of-the-extreme-go-horse-methodology-xgh-9fa739ab55b4
