---
tags:
  - concept
created:
  "{ date }":
---
START [!concept]
used to define endpoints
END

> [!code]
> ``` run-ts
> @Post()
> async create(@Body() createCatDto: CreateCatDto) {
> return 'This action adds a new cat';
> }
> ```

