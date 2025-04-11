.class public final Lkotlinx/serialization/internal/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final b:Lvb/b;

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lvb/b;I)V
    .locals 2

    iput p2, p0, Lkotlinx/serialization/internal/r;->a:I

    const/4 v0, 0x1

    const-string v1, "compute"

    if-eq p2, v0, :cond_0

    invoke-static {p1, v1}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/internal/r;->b:Lvb/b;

    new-instance p1, Lkotlinx/serialization/internal/q;

    invoke-direct {p1, p0}, Lkotlinx/serialization/internal/q;-><init>(Lkotlinx/serialization/internal/r;)V

    iput-object p1, p0, Lkotlinx/serialization/internal/r;->c:Ljava/lang/Object;

    return-void

    :cond_0
    invoke-static {p1, v1}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/internal/r;->b:Lvb/b;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/internal/r;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/reflect/c;)Lkotlinx/serialization/c;
    .locals 3

    iget v0, p0, Lkotlinx/serialization/internal/r;->a:I

    iget-object v1, p0, Lkotlinx/serialization/internal/r;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v1, Lkotlinx/serialization/internal/q;

    invoke-static {p1}, Lv9/a;->s(Lkotlin/reflect/c;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/ClassValue;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/internal/k;

    iget-object p0, p0, Lkotlinx/serialization/internal/k;->a:Lkotlinx/serialization/c;

    return-object p0

    :goto_0
    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Lv9/a;->s(Lkotlin/reflect/c;)Ljava/lang/Class;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance v2, Lkotlinx/serialization/internal/k;

    iget-object p0, p0, Lkotlinx/serialization/internal/r;->b:Lvb/b;

    invoke-interface {p0, p1}, Lvb/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/c;

    invoke-direct {v2, p0}, Lkotlinx/serialization/internal/k;-><init>(Lkotlinx/serialization/c;)V

    invoke-interface {v1, v0, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    move-object v2, p0

    :cond_1
    :goto_1
    check-cast v2, Lkotlinx/serialization/internal/k;

    iget-object p0, v2, Lkotlinx/serialization/internal/k;->a:Lkotlinx/serialization/c;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
