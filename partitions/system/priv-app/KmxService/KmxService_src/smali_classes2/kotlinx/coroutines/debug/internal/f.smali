.class public abstract Lkotlinx/coroutines/debug/internal/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lkotlinx/coroutines/internal/z;

.field public static final b:Lkotlinx/coroutines/debug/internal/l;

.field public static final c:Lkotlinx/coroutines/debug/internal/l;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlinx/coroutines/internal/z;

    const-string v1, "REHASH"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/z;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/debug/internal/f;->a:Lkotlinx/coroutines/internal/z;

    new-instance v0, Lkotlinx/coroutines/debug/internal/l;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlinx/coroutines/debug/internal/l;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lkotlinx/coroutines/debug/internal/f;->b:Lkotlinx/coroutines/debug/internal/l;

    new-instance v0, Lkotlinx/coroutines/debug/internal/l;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Lkotlinx/coroutines/debug/internal/l;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lkotlinx/coroutines/debug/internal/f;->c:Lkotlinx/coroutines/debug/internal/l;

    return-void
.end method
