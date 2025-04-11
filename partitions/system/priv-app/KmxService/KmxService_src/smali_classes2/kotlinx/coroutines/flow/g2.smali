.class public final Lkotlinx/coroutines/flow/g2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/f2;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/flow/internal/v;)Lkotlinx/coroutines/flow/f;
    .locals 0

    sget-object p0, Lkotlinx/coroutines/flow/SharingCommand;->START:Lkotlinx/coroutines/flow/SharingCommand;

    new-instance p1, Lkotlinx/coroutines/flow/r;

    invoke-direct {p1, p0}, Lkotlinx/coroutines/flow/r;-><init>(Lkotlinx/coroutines/flow/SharingCommand;)V

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "SharingStarted.Eagerly"

    return-object p0
.end method
