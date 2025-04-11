.class public final Lkotlinx/coroutines/i1;
.super Lkotlinx/coroutines/internal/i;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/v0;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/internal/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final e()Lkotlinx/coroutines/i1;
    .locals 0

    return-object p0
.end method

.method public final isActive()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lkotlinx/coroutines/internal/n;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
