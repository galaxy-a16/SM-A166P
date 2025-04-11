.class public final Lkotlinx/coroutines/j1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/j0;
.implements Lkotlinx/coroutines/k;


# static fields
.field public static final a:Lkotlinx/coroutines/j1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/j1;

    invoke-direct {v0}, Lkotlinx/coroutines/j1;-><init>()V

    sput-object v0, Lkotlinx/coroutines/j1;->a:Lkotlinx/coroutines/j1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Throwable;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final dispose()V
    .locals 0

    return-void
.end method

.method public final getParent()Lkotlinx/coroutines/y0;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "NonDisposableHandle"

    return-object p0
.end method
