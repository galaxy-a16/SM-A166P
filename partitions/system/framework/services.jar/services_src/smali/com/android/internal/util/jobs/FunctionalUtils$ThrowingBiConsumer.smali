.class public interface abstract Lcom/android/internal/util/jobs/FunctionalUtils$ThrowingBiConsumer;
.super Ljava/lang/Object;
.source "FunctionalUtils.java"

# interfaces
.implements Ljava/util/function/BiConsumer;


# annotations
.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 243
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/android/internal/util/jobs/FunctionalUtils$ThrowingBiConsumer;->acceptOrThrow(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 245
    invoke-static {p0}, Landroid/util/ExceptionUtils;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public abstract acceptOrThrow(Ljava/lang/Object;Ljava/lang/Object;)V
.end method
