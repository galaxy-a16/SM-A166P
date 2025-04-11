.class public final Lkotlinx/serialization/internal/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final b:Lvb/c;

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lvb/c;I)V
    .locals 2

    iput p2, p0, Lkotlinx/serialization/internal/s;->a:I

    const-string v0, "compute"

    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/internal/s;->b:Lvb/c;

    new-instance p1, Lkotlinx/coroutines/internal/c;

    invoke-direct {p1, v1}, Lkotlinx/coroutines/internal/c;-><init>(I)V

    iput-object p1, p0, Lkotlinx/serialization/internal/s;->c:Ljava/lang/Object;

    return-void

    :cond_0
    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/internal/s;->b:Lvb/c;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/internal/s;->c:Ljava/lang/Object;

    return-void
.end method
