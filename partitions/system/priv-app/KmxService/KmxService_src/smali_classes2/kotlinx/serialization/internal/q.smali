.class public final Lkotlinx/serialization/internal/q;
.super Ljava/lang/ClassValue;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lkotlinx/serialization/internal/r;


# direct methods
.method public constructor <init>(Lkotlinx/serialization/internal/r;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/serialization/internal/q;->a:Lkotlinx/serialization/internal/r;

    invoke-direct {p0}, Ljava/lang/ClassValue;-><init>()V

    return-void
.end method


# virtual methods
.method public final computeValue(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlinx/serialization/internal/k;

    iget-object p0, p0, Lkotlinx/serialization/internal/q;->a:Lkotlinx/serialization/internal/r;

    iget-object p0, p0, Lkotlinx/serialization/internal/r;->b:Lvb/b;

    invoke-static {p1}, Lkotlin/jvm/internal/o;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/j;

    move-result-object p1

    invoke-interface {p0, p1}, Lvb/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/c;

    invoke-direct {v0, p0}, Lkotlinx/serialization/internal/k;-><init>(Lkotlinx/serialization/c;)V

    return-object v0
.end method
