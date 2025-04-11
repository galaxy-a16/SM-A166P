.class public final Lkotlin/random/b;
.super Lkotlin/random/a;
.source "SourceFile"


# instance fields
.field public final a:Lj3/g;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lkotlin/random/a;-><init>()V

    new-instance v0, Lj3/g;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lj3/g;-><init>(I)V

    iput-object v0, p0, Lkotlin/random/b;->a:Lj3/g;

    return-void
.end method


# virtual methods
.method public final getImpl()Ljava/util/Random;
    .locals 1

    iget-object p0, p0, Lkotlin/random/b;->a:Lj3/g;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "implStorage.get()"

    invoke-static {p0, v0}, Li4/f;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/util/Random;

    return-object p0
.end method
