.class public Lcom/samsung/android/kmxservice/common/util/KmxFaultBarrier;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/kmxservice/common/util/KmxFaultBarrier$ThrowableRunnable;,
        Lcom/samsung/android/kmxservice/common/util/KmxFaultBarrier$ThrowableSupplier;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Lcom/samsung/android/kmxservice/common/util/KmxFaultBarrier$ThrowableSupplier;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/samsung/android/kmxservice/common/util/KmxFaultBarrier$ThrowableSupplier<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/samsung/android/kmxservice/common/util/KmxFaultBarrier;->get(Lcom/samsung/android/kmxservice/common/util/KmxFaultBarrier$ThrowableSupplier;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static get(Lcom/samsung/android/kmxservice/common/util/KmxFaultBarrier$ThrowableSupplier;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/samsung/android/kmxservice/common/util/KmxFaultBarrier$ThrowableSupplier<",
            "TT;>;TT;Z)TT;"
        }
    .end annotation

    .line 2
    :try_start_0
    invoke-interface {p0}, Lcom/samsung/android/kmxservice/common/util/KmxFaultBarrier$ThrowableSupplier;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    if-nez p2, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-object p1
.end method

.method public static run(Lcom/samsung/android/kmxservice/common/util/KmxFaultBarrier$ThrowableRunnable;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/samsung/android/kmxservice/common/util/KmxFaultBarrier;->run(Lcom/samsung/android/kmxservice/common/util/KmxFaultBarrier$ThrowableRunnable;Z)V

    return-void
.end method

.method public static run(Lcom/samsung/android/kmxservice/common/util/KmxFaultBarrier$ThrowableRunnable;Z)V
    .locals 0

    .line 2
    :try_start_0
    invoke-interface {p0}, Lcom/samsung/android/kmxservice/common/util/KmxFaultBarrier$ThrowableRunnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
