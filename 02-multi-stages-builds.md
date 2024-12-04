# Multi-stage builds

- Multi-stage allows you to create a **`pipeline`** within a Dockerfile
- Provides the ability to separate build-time and run-time images
- Use `COPY --from=<stage>` to copy from previous stages
- The last stage is the default target (can be overridden)

<!--
Multi-stage builds in Docker are a method that allows you to use multiple `FROM` statements in your Dockerfile. Each `FROM` instruction can use a different base, and each of them begins a new stage of the build. You can selectively copy artifacts from one stage to another, leaving behind everything you don't want in the final image.

> It's like a **`build pipeline`** in a Dockerfile.
-->

## Main advantages of multi-stage builds

> 1. **Reduced Image Size**: 
>    - By selectively copying only necessary artifacts into the final image, you can significantly reduce its size. This is especially beneficial for applications with large build dependencies.
> 2. **Separation of Build-time and Runtime Dependencies**: 
>    - Multi-stage builds allow you to separate build-time dependencies from runtime dependencies, which can further reduce the image size and make your application more secure.
> 3. **Efficient Builds**: 
>    - Multi-stage builds allow you to run build steps in parallel, making your build pipeline faster and more efficient.
> 4. **Security**: 
>    - By excluding unnecessary tools and files from the final image, you can minimize the attack surface of your application.

### 👋 "reminder" -> have a look 👀 to the `history` of builds