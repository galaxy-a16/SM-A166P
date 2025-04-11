.class public interface abstract Lcom/android/internal/util/jobs/FunctionalUtils$RemoteExceptionIgnoringConsumer;
.super Ljava/lang/Object;
.source "FunctionalUtils.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 0

    .line 167
    :try_start_0
    invoke-interface {p0, p1}, Lcom/android/internal/util/jobs/FunctionalUtils$RemoteExceptionIgnoringConsumer;->acceptOrThrow(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public abstract acceptOrThrow(Ljava/lang/Object;)V
.end method
