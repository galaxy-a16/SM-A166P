.class public final Lkotlinx/coroutines/flow/i2;
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
    .locals 1

    new-instance p0, Lkotlinx/coroutines/flow/StartedLazily$command$1;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lkotlinx/coroutines/flow/StartedLazily$command$1;-><init>(Lkotlinx/coroutines/flow/k2;Lkotlin/coroutines/d;)V

    new-instance p1, Lkotlinx/coroutines/flow/z1;

    invoke-direct {p1, p0}, Lkotlinx/coroutines/flow/z1;-><init>(Lvb/c;)V

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "SharingStarted.Lazily"

    return-object p0
.end method
