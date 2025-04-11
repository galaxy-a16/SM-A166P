.class public abstract Lkotlinx/coroutines/c0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lkotlinx/coroutines/e0;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "kotlinx.coroutines.main.delay"

    sget v1, Lkotlinx/coroutines/internal/a0;->a:I

    :try_start_0
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    sget-object v0, Lkotlinx/coroutines/h0;->a:Lkotlinx/coroutines/scheduling/e;

    sget-object v0, Lkotlinx/coroutines/internal/s;->a:Lkotlinx/coroutines/h1;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/android/d;

    iget-object v1, v1, Lkotlinx/coroutines/android/d;->f:Lkotlinx/coroutines/android/d;

    instance-of v1, v0, Lkotlinx/coroutines/e0;

    if-nez v1, :cond_2

    :goto_2
    sget-object v0, Lkotlinx/coroutines/b0;->h:Lkotlinx/coroutines/b0;

    goto :goto_3

    :cond_2
    check-cast v0, Lkotlinx/coroutines/e0;

    :goto_3
    sput-object v0, Lkotlinx/coroutines/c0;->a:Lkotlinx/coroutines/e0;

    return-void
.end method
